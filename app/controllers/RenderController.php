<?php
//to check the request


class RenderController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Landing Pages');
        parent::initialize();
    }
    public function indexAction(){
    }

    public function renderingTemplateAction(){
        //$this->view->disable();
        $lang='en';//defalut
        $templateid='';
        $themeid='';
        $lang='';
        $translation='';
        $request = new Phalcon\Http\Request();    
        if(isset($_GET['templateid']) && !empty($_GET['templateid']) && isset($_GET['themeid']) && !empty($_GET['themeid']) && isset($_GET['lang']) && !empty($_GET['lang']) && isset($_GET['grouptranslation']) && !empty($_GET['grouptranslation'])){
            $templateid=$_GET['templateid'];
            $themeid=$_GET['themeid'];
            $lang=$_GET['lang'];
            $grouptranslation=$_GET['grouptranslation'];
            $tplt = new Template();
            $result=$tplt->retrieveTemplate($templateid,$themeid,$lang,$grouptranslation);
            $csslink='';
            $filelink='';
            if(isset($result[0]) && !empty($result[0])){
                $csslink=$result[0]['csslink'];
                $filelink=$result[0]['filelink'];
            }
            //define an associative array to display in view the property and its translation
            $data=array();
            foreach($result as $value){
                $data[$value['property']]=$value['translation'];
            }
          //get out the file extension include doesn't support extension
            if(!empty($filelink) && !empty($csslink)){
                $filelink = preg_replace('/\\.[^.\\s]{3,4}$/', '', $filelink);
                $csslink='../'.$csslink;
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
                $this->view->pick("landingpages/render");
                $data=(object)$data;
                $this->view->setVars(
                    [
                        "csslink" => $csslink,
                        "filelink"    => $filelink,
                        "translation" => $data 
                    ]
                );

            }
            else{
                echo 'No result found! Please pass the valid parameter';
            }
        }
        else{
            echo 'Please pass all the required parameter!HINT: renderingTemplate?templateid=1&themeid=1&lang=en&grouptranslation=generic ';
        }

    }
/*
    public function retrieveTemplateByIdAction()
    {
        $this->view->disable();
        $id=1;//just to test
        //for get
        $request = new Phalcon\Http\Request();
       if(isset($_GET['id']) && !empty($_GET['id'])){
            $id=$_GET['id'];
        }
        //post
       else if ($request->isPost() == true && $request->isAjax() == true) 
        {
            $id= $this->request->getPost('id');
        }
		$tplt = new Template();
        $result = $tplt->retrieveTemplateById($id);
		echo json_encode($result, JSON_UNESCAPED_SLASHES);
    }

*/



  


}
