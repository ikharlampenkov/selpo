<?php

class ShowSiteMode extends Zend_Controller_Plugin_Abstract
{
    public function postDispatch(Zend_Controller_Request_Abstract $request)
    {
        $view = Zend_Controller_Front::getInstance()->getParam('bootstrap')->getResource('View');
        $mainSession = new Zend_Session_Namespace('siteMode');
        
        $view->assign('currentSiteMode', $mainSession->mode);
    }

}
