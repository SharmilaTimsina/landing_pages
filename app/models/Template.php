<?php

use Phalcon\Mvc\Model;

class Template extends Model
{
    private $id;
    private $name;
    private $file_path;
    private $created_by;
    private $edited_by;
    private $edited_date;
    private $edited_reason;

    public function retrieveTemplate($templateid,$themeid,$lang,$grouptranslation){
        try {
            $sql = "SELECT tm.file_path as filelink,th.file_path as csslink,lg.property_translation as translation ,lg.property as property FROM template as tm
            INNER JOIN theme as th ON tm.id = th.template_id  INNER JOIN languages as lg ON tm.id = lg.template_id  WHERE tm.id=:tmid AND th.id=:thid AND lg.lang=:lang AND lg.group_translation=:grouptranslation";
            $statement = $this->getDi()->getDb()->prepare($sql);
            $exe = $this->getDi()->getDb()->executePrepared($statement, array(':tmid' => $templateid,':thid' => $themeid,':lang' =>$lang,':grouptranslation' =>$grouptranslation), array(':tmid' => \Phalcon\Db\Column::TYPE_INTEGER,':thid' => \Phalcon\Db\Column::TYPE_INTEGER,':lang' => \Phalcon\Db\Column::TYPE_VARCHAR,':grouptranslation' => \Phalcon\Db\Column::TYPE_VARCHAR));
            return $exe->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            return $e->getMessage();
        }
      }
    
    public function retrieveTemplateById($id){
        try {
            //test purpose
            $this->id=$id;
            $sql = "SELECT * FROM template as tm WHERE tm.id=:id";
            $statement = $this->getDi()->getDb()->prepare($sql);
            $exe = $this->getDi()->getDb()->executePrepared($statement, array(':id' => $this->id), array(':id' => \Phalcon\Db\Column::TYPE_INTEGER));
            return $exe->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            return $e->getMessage();
        }

    }

}
