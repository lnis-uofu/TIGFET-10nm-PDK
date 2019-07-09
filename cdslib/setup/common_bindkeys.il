;==========================================================================
;
; $Id: common_bindkeys.il 93 2007-09-04 20:34:51Z wdavis $
; 
;--------------------------------------------------------------------------

        /********************************************************\
         *                                                      *
         *              ==========                              *
         *             ========  /  Copyright (c) 1994          *
         *            ------- / /   Cadence Design Systems Ltd. *
         *           ----- / / /                                *
         *          --- / / / /     Consulting Services.        *
         *         / / / / / /                                  *
         *         \ \ \ \ \ \      All Rights Reserved         *
         *                                                      *
        \********************************************************/


/*******************************************************************************
 *
 * Filename: bindkeys.il Version: %W% %G% Author: Karl Relton
 * 
 * Code to set up bindkeys, providing a great deal of uniformity
 * between the schematic, symbol, layout and abstract editor keys.
 *
 * This file was based on a file sent out by Kathy Turnbull, with some
 * modifications.
 * 
 * Note that in general the bindkeys supplement the general graphics
 * editor bindings that are set by default anyway.
 *
 * Note that for the abstract editor, some keys are intialised already
 * from the context .ini file, so we need not do them here.
 *
******************************************************************************/


;-------------------------------------------------------------------------------
; The following global variable bindKeyList is used to store all the
; bindkey settings.
;-------------------------------------------------------------------------------
bindKeyList = '(

;   ("Layout" "None<DrawThru2>"       "hiStroke(hiGetCommandPoint())")
;   ("Abstract" "None<DrawThru2>"     "hiStroke(hiGetCommandPoint())")
;   ("Floorplan/P&R" "None<DrawThru2>" "hiStroke(hiGetCommandPoint())")
;   ("Schematics" "None<DrawThru2>"   "hiStroke(hiGetCommandPoint())")
;   ("Symbol" "None<DrawThru2>"       "hiStroke(hiGetCommandPoint())")

    ("Layout" "<Key>a"                "geSingleSelectPoint()")
    ("Abstract" "<Key>a"              "geSingleSelectPoint()")
    ("Floorplan/P&R" "<Key>a"         "prsSelectPoint()")
    ("Schematics" "<Key>a"            "geSingleSelectPoint()")
    ("Symbol" "<Key>a"                "geSingleSelectPoint()")

    ("Layout" "Shift<Key>a"           "geSingleSelectBox()")
    ("Abstract" "Shift<Key>a"         "geSingleSelectBox()")
    ("Floorplan/P&R" "Shift<Key>a"    "prsSelectArea()")
    ("Schematics" "Shift<Key>a"       "geSingleSelectBox()")
    ("Symbol" "Shift<Key>a"           "geSingleSelectBox()")

    ("Layout" "Ctrl<Key>a"            "geSelectAllFig()")
    ; Abstract is done already
    ("Floorplan/P&R" "Ctrl<Key>a"     "icSetDesignWindow() prsSelectAll()")
    ("Schematics" "Ctrl<Key>a"        "geSelectAllFig()")
    ("Symbol" "Ctrl<Key>a"            "geSelectAllFig()")

    ("Layout" "<Key>b"                "geReturn()")
    ("Abstract" "<Key>b"              "geReturn()")
    ("Floorplan/P&R" "<Key>b"         "icReturn()")
    ("Schematics" "<Key>b"            "schHiReturn()")
    ("Symbol" "<Key>b"                "schHiReturn()")

    ("Layout" "Shift<Key>b"           "geReturnToLevel()")
    ("Abstract" "Shift<Key>b"         "geReturnToLevel()")
    ("Floorplan/P&R" "Shift<Key>b"    "icReturnToLevel()")
    ("Schematics" "Shift<Key>b"       "schHiReturnToTop()")
    ("Symbol" "Shift<Key>b"           "schHiReturnToTop()")

    ("Layout" "<Key>c"                "leHiCopy()")
    ("Abstract" "<Key>c"              "leHiCopy()")
    ("Floorplan/P&R" "<Key>c"         "adpfpClearErrorMC()")
    ("Schematics" "<Key>c"            "schHiCopy()")
    ("Symbol" "<Key>c"                "schHiCopy()")

    ("Layout" "Shift<Key>c"           "leHiChop()")
    ("Floorplan/P&R" "Shift<Key>c"    "icConnectivityCB()")

    ("Layout" "<Key>d"                "geSubSelectPoint()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>d"         "prsMouseSelPt('sub)")
    ("Schematics" "<Key>d"            "geSubSelectPoint()")
    ("Symbol" "<Key>d"                "geSubSelectPoint()")

    ("Layout" "Shift<Key>d"           "geSubSelectBox()")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>d"    "prsMouseSelBox('sub)")
    ("Schematics" "Shift<Key>d"       "geSubSelectBox()")
    ("Symbol" "Shift<Key>d"           "geSubSelectBox()")

    ("Layout" "Ctrl<Key>d"            "geDeselectAllFig()")
    ; Abstract is done already
    ("Floorplan/P&R" "Ctrl<Key>d"     "icSetDesignWindow() prsDeselectAll()")
    ("Schematics" "Ctrl<Key>d"        "geDeselectAllFig()") 
    ("Symbol" "Ctrl<Key>d"            "geDeselectAllFig()")

    ("Layout" "<Key>e"                "leHiEditDisplayOptions()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>e"         "adpHiEditDisplayOptions()")
    ("Schematics" "<Key>e"            "schHiDisplayOptions()")
    ("Symbol" "<Key>e"                "schHiDisplayOptions()")

    ("Layout" "Shift<Key>e"           "leHiEditEditorOptions()")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>e"    "leHiEditEditorOptions()")
    ("Schematics" "Shift<Key>e"       "schHiEditorOptions()")
    ("Symbol" "Shift<Key>e"           "schHiEditorOptions()")

    ("Schematics" "Ctrl<Key>e"        "schHiGridOptions()")
    ("Symbol" "Ctrl<Key>e"            "schHiDisplayOptions()")

    ("Layout" "<Key>f"                "hiZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
    ("Graphics Browser" "<Key>f"      "hiZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>f"         "hiZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
    ("Schematics" "<Key>f"            "schZoomFit(1.0 0.9)")
    ("Symbol" "<Key>f"                "schZoomFit(1.0 0.9)")

    ("Layout" "Shift<Key>f"           "hiGetCurrentWindow()->stopLevel = 20")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>f"    "hiGetCurrentWindow()->stopLevel = 20")

    ("Layout" "Ctrl<Key>f"            "hiGetCurrentWindow()->stopLevel = 0")
    ; Abstract is done already
    ("Floorplan/P&R" "Ctrl<Key>f"     "hiGetCurrentWindow()->stopLevel = 0")

    ; JTS
    ("Layout" "Shift<Key>="           "hiGetCurrentWindow()->stopLevel = hiGetCurrentWindow()->stopLevel+1")
    ("Abstract" "Shift<Key>="         "hiGetCurrentWindow()->stopLevel = hiGetCurrentWindow()->stopLevel+1")
    ("Floorplan/P&R" "Shift<Key>="    "hiGetCurrentWindow()->stopLevel = hiGetCurrentWindow()->stopLevel+1")
    ("Layout" "<Key>-"                "hiGetCurrentWindow()->stopLevel = hiGetCurrentWindow()->stopLevel-1")
    ("Abstract" "<Key>-"              "hiGetCurrentWindow()->stopLevel = hiGetCurrentWindow()->stopLevel-1")
    ("Floorplan/P&R" "<Key>-"         "hiGetCurrentWindow()->stopLevel = hiGetCurrentWindow()->stopLevel-1")

    ("Layout" "<Key>g"                "leToggleGravity()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>g"         "adpfpCreateGroupMC()")
    ("Schematics" "<Key>g"            "geHiFindMarker()")
    ("Symbol" "<Key>g"                "geHiFindMarker()")
 
    ("Layout" "Shift<Key>g"           "leEIPZoomAbsoluteScale(hiGetCurrentWindow() 0.9)") 
    ("Abstract" "Shift<Key>g"         "leEIPZoomAbsoluteScale(hiGetCurrentWindow() 0.9)") 
    ("Schematics" "Shift<Key>g"       "geHiExplainMarker()")
    ("Symbol" "Shift<Key>g"           "geHiExplainMarker()")

    ("Layout" "Ctrl<Key>g"            "geZoomToGrid(hiGetCurrentWindow())")
    ("Abstract" "Ctrl<Key>g"          "geZoomToGrid(hiGetCurrentWindow())")
    ("Schematics" "Ctrl<Key>g"        "geHiDeleteMarker()")
    ("Symbol" "Ctrl<Key>g"            "geHiDeleteMarker()")

    ("Schematics" "<Key>h"            "schHiHiliteLabel(\"wire\" \"on\")")
    ("Schematics" "Shift<Key>h"       "schHiHiliteLabel(\"wire\" \"off\")")

    ("Layout" "<Key>i"                "leHiCreateInst()")
    ("Abstract" "<Key>i"              "leHiCreateInst()")
    ("Floorplan/P&R" "<Key>i"         "adpCmdAnalyze()")
    ("Schematics" "<Key>i"            "schHiCreateInst()")

    ("Floorplan/P&R" "Shift<Key>i"    "prsShowSelSet()")
    ("Schematics" "Shift<Key>i"       "schHiCreateBlockInst()")

    ("Schematics" "<Key>j"            "schHiRotate()")
    ("Schematics" "<Key>j EF"         "schSetEnv(\"rotate\" t)")
    ("Symbol" "<Key>j"                "schHiRotate(t)")
    ("Symbol" "<Key>j EF"             "schSetEnv(\"rotate\" t)")

    ("Schematics" "Shift<Key>j EF"    "schSetEnv(\"sideways\" t)")
    ("Symbol" "Shift<Key>j EF"        "schSetEnv(\"sideways\" t)")

    ("Schematics" "Ctrl<Key>j EF"     "schSetEnv(\"upsideDown\" t)")
    ("Symbol" "Ctrl<Key>j EF"         "schSetEnv(\"upsideDown\" t)")

    ("Layout" "<Key>k"                "leHiCreateRuler()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>k"         "leHiCreateRuler()")

    ("Layout" "Shift<Key>k"           "leHiClearRuler()")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>k"    "leHiClearRuler()")

;   ("Layout" "<Key>l"                "leHiCreateLabel()")
;   ("Abstract" "<Key>l"              "leHiCreateLabel()")
    ; JTS
    ("Layout" "<Key>l"                "doCreateLabels()")
    ("Abstract" "<Key>l"              "doCreateLabels()")
    ("Floorplan/P&R" "<Key>l"         "icHiChangeLayer()")
    ("Schematics" "<Key>l"            "schHiCreateWireLabel()")
    ("Symbol" "<Key>l"                "schHiCreateSymbolLabel()")

    ("Floorplan/P&R" "Shift<Key>l"    "icHiWireEditForm()")
    ("Schematics" "Shift<Key>l"       "schHiCreateNoteLabel()")
    ("Symbol" "Shift<Key>l"           "schHiCreateNoteLabel()")

    ("Layout" "<Key>m"                "leHiMove()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>m"         "adpCmdMove()")
    ("Schematics" "<Key>m"            "schHiMove()")
    ("Symbol" "<Key>m"                "schHiMove()")

    ("Layout" "Shift<Key>m"           "leHiMerge()")
    ("Floorplan/P&R" "Shift<Key>m"    "gciDisplayMarkers(hiGetCurrentWindow())")

    ; JTS
    ("Layout" "Ctrl<Key>m"            "geDeleteAllMarker(getEditRep())")
    ("Schematics" "Ctrl<Key>m"        "geDeleteAllMarker(getEditRep())")
    ("Symbol" "Ctrl<Key>m"            "geDeleteAllMarker(getEditRep())")

    ("Layout" "<Key>n"                "leSetFormSnapMode(\"diagonal\")")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>n"         "leSetFormSnapMode(\"diagonal\")")
    ("Schematics" "<Key>n"            "schHiCreateNoteShape()")
    ("Symbol" "<Key>n"                "schHiCreateNoteShape()")

    ("Layout" "Shift<Key>n"           "leSetFormSnapMode(\"orthogonal\")")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>n"    "leSetFormSnapMode(\"orthogonal\")")

    ("Layout" "Ctrl<Key>n"            "leSetFormSnapMode(\"L90XFirst\")")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>n"    "leSetFormSnapMode(\"orthogonal\")")

    ("Layout" "<Key>o"                "leHiCreateVia()")
    ("Abstract" "<Key>o"              "leHiCreateVia()")

    ("Layout" "<Key>p"                "leHiCreatePath()")
    ("Abstract" "<Key>p"              "leHiCreatePath()")
    ("Floorplan/P&R" "<Key>p"         "icHiCreateWire()")
    ("Schematics" "<Key>p"            "schHiCreatePin()")
    ("Symbol" "<Key>p"                "schHiCreateSymbolPin()")

    ("Layout" "Shift<Key>p"           "leHiCreatePolygon()")
    ("Abstract" "Shift<Key>p"         "leHiCreatePolygon()")
    ("Floorplan/P&R" "Shift<Key>p"    "hdpCreatePinMC()")
    ("Symbol" "Shift<Key>p"           "schHiDrawSymbolPin()")

    ("Layout" "Ctrl<Key>p"            "leHiCreatePin()")
    ("Abstract" "Ctrl<Key>p"          "leHiCreatePin()")

    ("Layout" "<Key>q"                "leHiEditProp()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>q"         "adpEditSelSet()")
    ("Schematics" "<Key>q"            "schHiObjectProperty()")
    ("Schematics" "<Key>q EF"         "schHiObjectProperty()")
    ("Symbol" "<Key>q"                "schHiObjectProperty()")
    ("Symbol" "<Key>q EF"             "schHiObjectProperty()")

    ("Layout" "Shift<Key>q"           "leEditDesignProperties()")
    ; Abstract is done already
    ("Schematics" "Shift<Key>q"       "schHiCellViewProperty()")
    ("Schematics" "Shift<Key>q EF"    "schHiCellViewProperty()")
    ("Symbol" "Shift<Key>q"           "schHiCellViewProperty()")
    ("Symbol" "Shift<Key>q EF"        "schHiCellViewProperty()")

    ("Layout" "<Key>r"                "leHiCreateRect()")
    ("Abstract" "<Key>r"              "leHiCreateRect()")
    ("Floorplan/P&R" "<Key>r"         "adpfpCreateRgnMC()")
    ("Schematics" "<Key>r"            "schHiRotate()")
    ("Symbol" "<Key>r"                "schHiRotate()")

    ("Layout" "Shift<Key>r"           "leHiReShape()")
    ("Abstract" "Shift<Key>r"         "leHiReShape()")

    ("Layout" "<Key>F6"               "hiRedraw()")
    ("Abstract" "<Key>F6"             "hiRedraw()")
    ("Floorplan/P&R" "<Key>F6"        "hiRedraw()")
    ("Schematics" "<Key>F6"           "hiRedraw()")
    ("Symbol" "<Key>F6"               "hiRedraw()")

    ("Layout" "Ctrl<Key>r"            "hiRedraw()")
    ("Graphics Browser" "Ctrl<Key>r"  "hiRedraw()")
    ("Abstract" "Ctrl<Key>r"          "hiRedraw()")
    ("Floorplan/P&R" "Ctrl<Key>r"     "hiRedraw()")
    ("Schematics" "Ctrl<Key>r"        "hiRedraw()")
    ("Symbol" "Ctrl<Key>r"            "hiRedraw()")

    ("Layout" "<Key>s"                "leHiStretch()")
    ; Abstract is done already
    ("Schematics" "<Key>s"            "schHiStretch()")
    ("Symbol" "<Key>s"                "schHiSymStretch()")

    ("Layout" "Shift<Key>s"           "leHiSearch()")
    ("Abstract" "Shift<Key>s"         "leHiSearch()")
    ("Floorplan/P&R" "Shift<Key>s"    "adpCreateSearchWidget()")
    ("Schematics" "Shift<Key>s"       "schHiFind()")
    ("Show File" "Shift<Key>s"        "hiDisplayForm(hiSearchForm)")
        
    ("Layout" "Ctrl<Key>s"            "leHiSplit()")
    ("Floorplan/P&R" "Ctrl<Key>s"     "icHiSplit()")

    ("Layout" "<Key>t"                "leHiLayerTap()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>t"         "icSetDesignWindow() prshiSelectByName()")

    ("Layout" "Shift<Key>t"           "leHiTree()")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>t"    "icSetDesignWindow() prshiSelectByConnTo()")

    ("Floorplan/P&R" "Ctrl<Key>t"     "icSetDesignWindow() prsDeselectAllTypes()")

    ("Layout" "<Key>u"                "hiUndo()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>u"         "hiUndo()")
    ("Schematics" "<Key>u"            "hiUndo()")
    ("Symbol" "<Key>u"                "hiUndo()")

    ("Layout" "Shift<Key>u"           "hiRedo()")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>u"    "hiRedo()")
    ("Schematics" "Shift<Key>u"       "hiRedo()")
    ("Symbol" "Shift<Key>u"           "hiRedo()")

    ("Layout" "<Key>v"                "leHiAttach()")
    ("Floorplan/P&R" "<Key>v"         "adpCreateLSWWidgets()")

    ("Layout" "Ctrl<Key>v"            "hiFocusToCIW(hiGetCurrentWindow())")
    ("Floorplan/P&R" "Ctrl<Key>v"     "hiFocusToCIW(hiGetCurrentWindow())")
    ("Schematics" "Ctrl<Key>v"        "hiFocusToCIW(hiGetCurrentWindow())")
    ("Symbol" "Ctrl<Key>v"            "hiFocusToCIW(hiGetCurrentWindow())")

    ("Layout" "<Key>w"                "hiPrevWinView(hiGetCurrentWindow())")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>w"         "hiPrevWinView(hiGetCurrentWindow())")
    ("Schematics" "<Key>w"            "schHiCreateWire(0.0)")
    ("Symbol" "<Key>w"                "hiPrevWinView(hiGetCurrentWindow())")

    ("Layout" "Shift<Key>w"           "hiNextWinView(hiGetCurrentWindow())")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>w"    "hiNextWinView(hiGetCurrentWindow())")
    ("Schematics" "Shift<Key>w"       "schHiCreateWire(schGetEnv(\"defWideWireWidth\"))")
    ("Symbol" "Shift<Key>w"           "hiNextWinView(hiGetCurrentWindow())")

    ("Layout" "Ctrl<Key>w"            "hiCloseWindow(hiGetCurrentWindow())")
    ("Graphics Browser" "Ctrl<Key>w"  "hiCloseWindow(hiGetCurrentWindow())")
    ("Abstract" "Ctrl<Key>w"          "hiCloseWindow(hiGetCurrentWindow())")
    ("Floorplan/P&R" "Ctrl<Key>w"     "icCloseWindow(hiGetCurrentWindow())")
    ("Schematics" "Ctrl<Key>w"        "hiCloseWindow(getCurrentWindow())")
    ("Symbol" "Ctrl<Key>w"            "hiCloseWindow(getCurrentWindow())")
    ("Show File" "Ctrl<Key>w"         "hiEditFileQuitTrigger(-1 0)")
    ; JTS
    ("Text" "Ctrl<Key>w"              "hiCloseWindow(hiGetCurrentWindow())")

    ("Layout" "<Key>x"                "leHiDescend()")
    ("Floorplan/P&R" "<Key>x"         "leHiDescend()")
    ("Schematics" "<Key>x"            "schHiDescendRead()")

    ("Schematics" "Shift<Key>x"       "schHiDescendEdit()")

    ("Layout" "Ctrl<Key>x"            "leHiEditInPlace()")
    ("Schematics" "Ctrl<Key>x"        "schHiEditInPlace()")

    ("Layout" "<Key>y"                "leHiYank()")
    ("Layout" "Shift<Key>y"           "leHiPaste()")

    ("Layout" "<Key>z"                "hiZoomIn()")
    ("Graphics Browser" "<Key>z"      "hiZoomIn()")
    ; Abstract is done already
    ("Floorplan/P&R" "<Key>z"         "hiZoomIn()")
    ("Schematics" "<Key>z"            "hiZoomIn()")
    ("Symbol" "<Key>z"                "hiZoomIn()")

    ("Layout" "Shift<Key>z"           "hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
    ("Graphics Browser" "Shift<Key>z" "hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
    ; Abstract is done already
    ("Floorplan/P&R" "Shift<Key>z"    "hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
    ("Schematics" "Shift<Key>z"       "hiZoomRelativeScale(getCurrentWindow() 0.8)")
    ("Symbol" "Shift<Key>z"           "hiZoomRelativeScale(getCurrentWindow() 0.8)")

    ("Layout" "Ctrl<Key>z"            "hiZoomRelativeScale(hiGetCurrentWindow() 2.0)")
    ("Graphics Browser" "Ctrl<Key>z"  "hiZoomRelativeScale(hiGetCurrentWindow() 2.0)")
    ; Abstract is done already
    ("Floorplan/P&R" "Ctrl<Key>z"     "hiZoomRelativeScale(hiGetCurrentWindow() 2.0)")
    ("Schematics" "Ctrl<Key>z"        "hiZoomRelativeScale(getCurrentWindow() 1.25)")
    ("Symbol" "Ctrl<Key>z"            "hiZoomRelativeScale(getCurrentWindow() 1.25)")

    ("Schematics" "<Key>s EF"         "schSnapToConn()")    

    ("Schematics" "<Key>5"            "schHiRouteFlightLine()")

    ("Schematics" "<Key>8"            "schHiHiliteLabel(\"instance\" \"on\")")
    ("Schematics" "Shift<Key>8"       "schHiHiliteLabel(\"instance\" \"off\")")

    ("Schematics" "<Key>9"            "geAddNetProbe()")
    ("Symbol" "<Key>9"                "geAddNetProbe()")

    ("Schematics" "Shift<Key>9"       "geDeleteNetProbe()")
    ("Symbol" "Shift<Key>9"           "geDeleteNetProbe()")

    ("Schematics" "Ctrl<Key>9"        "geDeleteAllProbe(getCurrentWindow() t)")
    ("Symbol" "Ctrl<Key>9"            "geDeleteAllProbe(getCurrentWindow() t)")

    ("Layout" "<Key>BackSpace"                "leHiDelete()")
    ("Abstract" "<Key>BackSpace"              "absHiDelete()")
    ("Floorplan/P&R" "<Key>BackSpace"         "adpCmdDelete()")
    ("Schematics" "<Key>BackSpace"            "schHiDelete()")
    ("Symbol" "<Key>BackSpace"                "schHiDelete()")

    ("Layout" "<Key>Delete"                   "leHiDelete()")
    ("Abstract" "<Key>Delete"                 "absHiDelete()")
    ("Floorplan/P&R" "<Key>Delete"            "adpCmdDelete()")
    ("Schematics" "<Key>Delete"               "schHiDelete()")
    ("Symbol" "<Key>Delete"                   "schHiDelete()")

    ("Layout" "<Key>Delete EF"                "deletePoint()")
    ("Floorplan/P&R" "<Key>Delete EF"         "deletePoint()")
    ("Schematics" "<Key>Delete EF"            "deletePoint()")
    ("Symbol" "<Key>Delete EF"                "deletePoint()")

    ("Layout" "<Key>Tab"                      "hiPan()")
    ("Graphics Browser" "<Key>Tab"            "hiPan()")
    ("Abstract" "<Key>Tab"                    "hiPan()")
    ("Floorplan/P&R" "<Key>Tab"               "hiPan()")
    ("Schematics" "<Key>Tab"                  "hiPan()")
    ("Symbol" "<Key>Tab"                      "hiPan()")

    ("Layout" "<Key>F2"                       "geSave()")
    ("Abstract" "<Key>F2"                     "geSave()")
    ("Floorplan/P&R" "<Key>F2"                "icSaveMC(hiGetCurrentWindow())")
    ("Schematics" "<Key>F2"                   "schHiSaveCellView()")
    ("Symbol" "<Key>F2"                       "schHiSaveCellView()")

    ("Layout" "<Key>F3"                       "geSaveAs()")
    ("Abstract" "<Key>F3"                     "geSaveAs()")
    ("Floorplan/P&R" "<Key>F3"
        "icSaveAsMC(hiGetCurrentWindow())")
    ("Schematics" "<Key>F3"                   "geSaveAs()")
    ("Symbol" "<Key>F3"                       "geSaveAs()")
    ("Show File" "<Key>F3"                    "hiSaveAsViewFile()")

    ("Schematics" "<Key>F4"                   "schSetSelectOptions()")
    ("Symbol" "<Key>F4"                       "schSetSelectOptions()")

    ("Layout" "<Key>F5"                       "geChangeCellView()")
    ("Abstract" "<Key>F5"                     "geChangeCellView()")
    ("Floorplan/P&R" "<Key>F5"                "geChangeCellView()")
    ("Schematics" "<Key>F5"                   "schHiOpenCellView()")
    ("Symbol" "<Key>F5"                       "schHiOpenCellView()")

    ("layout" "<Key>F7" "hiGetCurrentWindow()->dynameHilightOn = null(hiGetCurrentWindow()->dynameHilightOn)")
    ("abstract" "<Key>F7" "hiGetCurrentWindow()->dynameHilightOn = null(hiGetCurrentWindow()->dynameHilightOn)")
    ("Floorplan/P&R" "<Key>F7" "hiGetCurrentWindow()->dynameHilightOn = null(hiGetCurrentWindow()->dynameHilightOn)")
    ("Schematics" "<Key>F7"                   "schHiCheck(\"run\")")

    ("Schematics" "<Key>F8"                   "schHiCheckAndSave()")
    ("Symbol" "<Key>F8"                       "schHiVICAndSave()")

    ; awg
    ("Layout" "<Key>F9"                       "NCSU_delChangeBox()")

    ("Schematics" "None<Btn1Down>"            "schSingleSelectPt()")
    ("Schematics" "Shift<Btn1Down>"           "schAddSelectPt()")

    ("Schematics" "<DrawThru1>"               "schDirectEdit(1)")
    ("Symbol" "<DrawThru1>"                   "schDirectEdit(1)")

    ("Schematics" "Shift<DrawThru1>"          "schDirectEdit(2)")
    ("Symbol" "Shift<DrawThru1>"              "schDirectEdit(2)")

    ("Schematics" "Ctrl<DrawThru1>"           "schDirectEdit(3)")
    ("Symbol" "Ctrl<DrawThru1>"               "schDirectEdit(3)")

;   ("layout" "<DrawThru2>"                  "hiStroke(hiGetCommandPoint())")
;   ("abstract" "<DrawThru2>"                "hiStroke(hiGetCommandPoint())")
;   ("Floorplan/P&R" "<DrawThru2>"           "hiStroke(hiGetCommandPoint())")
;   ("Schematics" "<DrawThru2>"              "hiStroke(hiGetCommandPoint())")
;   ("Symbol" "<DrawThru2>"                  "hiStroke(hiGetCommandPoint())")

    ("Schematics" "None<Btn1Down>(2)"         "schExtendSelectPt()")
    ("Schematics" "None<Btn1Down>(2) EF"     "schMouseApplyOrFinish()")
    ("Symbol" "None<Btn1Down>(2) EF"         "schMouseApplyOrFinish()")

    ("Schematics" "None<Btn2Down>"            "schHiMousePopUp()")
    ("Symbol" "None<Btn2Down>"                "schHiMousePopUp()")

    ("Schematics" "None<Btn2Down> EF"         "schHiMousePopUp()")
    ("Symbol" "None<Btn2Down> EF"             "schHiMousePopUp()")

    ("Schematics" "None<Btn3Down> EF"         "schCmdOption()")
    ("Symbol" "None<Btn3Down>EF"              "schCmdOption()")

    ("Schematics" "Shift<Btn3Down> EF"        "schShiftCmdOption()")
    ("Symbol" "Shift<Btn3Down> EF"            "schShiftCmdOption()")

   
;***************************************************************************
    ; Numeric Key Pad (Window Panning Functions)
    ; Note abstract done already.
;***************************************************************************

    ("Layout" "<Key>R7"               "geScroll(nil \"nw\"    nil)")
    ("Floorplan/P&R" "<Key>R7"        "geScroll(nil \"nw\"    nil)")
    ("Schematics" "<Key>R7"           "geScroll(nil \"nw\"    nil)")
    ("Symbol" "<Key>R7"               "geScroll(nil \"nw\"    nil)")
    ("Show File" "<Key>R7"            "hiScrollWindowTop(hiGetCurrentWindow())")

    ("Layout" "<Key>Up"               "geScroll(nil \"n\"     nil)")
    ("Floorplan/P&R" "<Key>Up"        "geScroll(nil \"n\"     nil)")
    ("Schematics" "<Key>Up"           "geScroll(nil \"n\"     nil)")
    ("Symbol" "<Key>Up"               "geScroll(nil \"n\"     nil)")

    ("Layout" "<Key>R9"               "geScroll(nil \"ne\"    nil)")
    ("Floorplan/P&R" "<Key>R9"        "geScroll(nil \"ne\"    nil)")
    ("Schematics" "<Key>R9"           "geScroll(nil \"ne\"    nil)")
    ("Symbol" "<Key>R9"               "geScroll(nil \"ne\"    nil)")
    ("Show File" "<Key>R9"            "hiScrollWindowUp(hiGetCurrentWindow())")

    ("Layout" "<Key>Left"             "geScroll(nil \"w\"     nil)")
    ("Floorplan/P&R" "<Key>Left"      "geScroll(nil \"w\"     nil)")
    ("Schematics" "<Key>Left"         "geScroll(nil \"w\"     nil)")
    ("Symbol" "<Key>Left"             "geScroll(nil \"w\"     nil)")

    ("Layout" "<Key>R11"              "geScroll(nil \"\"      nil)")
    ("Floorplan/P&R" "<Key>R11"       "geScroll(nil \"\"      nil)")
    ("Schematics" "<Key>R11"          "geScroll(nil \"\"      nil)")
    ("Symbol" "<Key>R11"              "geScroll(nil \"\"      nil)")

    ("Layout" "<Key>Right"            "geScroll(nil \"e\"     nil)")
    ("Floorplan/P&R" "<Key>Right"     "geScroll(nil \"e\"     nil)")
    ("Schematics" "<Key>Right"        "geScroll(nil \"e\"     nil)")
    ("Symbol" "<Key>Right"            "geScroll(nil \"e\"     nil)")

    ("Layout" "<Key>R13"              "geScroll(nil \"sw\"    nil)")
    ("Floorplan/P&R" "<Key>R13"       "geScroll(nil \"sw\"    nil)")
    ("Schematics" "<Key>R13"          "geScroll(nil \"sw\"    nil)")
    ("Symbol" "<Key>R13"              "geScroll(nil \"sw\"    nil)")
    ("Show File" "<Key>R13"           "hiScrollWindowBottom(hiGetCurrentWindow())")

    ("Layout" "<Key>Down"             "geScroll(nil \"s\"     nil)")
    ("Floorplan/P&R" "<Key>Down"      "geScroll(nil \"s\"     nil)")
    ("Schematics" "<Key>Down"         "geScroll(nil \"s\"     nil)")
    ("Symbol" "<Key>Down"             "geScroll(nil \"s\"     nil)")

    ("Layout" "<Key>R15"              "geScroll(nil \"se\"    nil)")
    ("Floorplan/P&R" "<Key>R15"       "geScroll(nil \"se\"    nil)")
    ("Schematics" "<Key>R15"          "geScroll(nil \"se\"    nil)")
    ("Symbol" "<Key>R15"              "geScroll(nil \"se\"    nil)")
    ("Show File" "<Key>R15"           "hiScrollWindowDown(hiGetCurrentWindow())")

    ("Layout" "<Key>KP_Enter"         "mouseAddPt()")
    ("Floorplan/P&R" "<Key>KP_Enter"  "mouseAddPt()")
    ("Schematics" "<Key>KP_Enter"     "mouseAddPt()")
    ("Symbol" "<Key>KP_Enter"         "mouseAddPt()")

    ("Layout" "<Key>KP_Add"           "leHiSetRefPoint()")
    ("Layout" "<Key>KP_Subtract"      "leSetRefPointInactive(geGetEditCellView())")

    ("Layout" "<Key>KP_Equal"         "legRpDelta = 0.5")
    ("Layout" "<Key>KP_Divide"        "legRpDelta = 1.0")
    ("Layout" "<Key>KP_Multiply"      "legRpDelta = 2.0")

    ("Layout" "<Key>R4"               "legRpDelta = 0.5")
    ("Layout" "<Key>R5"               "legRpDelta = 1.0")
    ("Layout" "<Key>R6"               "legRpDelta = 2.0")

    ("Layout" "Shift<Key>R7"          "leMoveCursor(-legRpDelta legRpDelta)")
    ("Layout" "Shift<Key>Up"          "leMoveCursor(          0 legRpDelta)")
    ("Layout" "Shift<Key>R9"          "leMoveCursor( legRpDelta legRpDelta)")
    ("Layout" "Shift<Key>Left"        "leMoveCursor(-legRpDelta        0)")
    ("Layout" "Shift<Key>R11"         "leMoveCursorToRefPoint()")
    ("Layout" "Shift<Key>Right"       "leMoveCursor( legRpDelta        0)")
    ("Layout" "Shift<Key>R13"         "leMoveCursor(-legRpDelta -legRpDelta)")
    ("Layout" "Shift<Key>Down"        "leMoveCursor(0          -legRpDelta)")
    ("Layout" "Shift<Key>R15"         "leMoveCursor( legRpDelta -legRpDelta)")

    ("Layout" "Ctrl<Key>R7"           "geScroll(nil \"nw\"    t)")
    ("Floorplan/P&R" "Ctrl<Key>R7"    "geScroll(nil \"nw\"    t)")
    ("Layout" "Ctrl<Key>Up"           "geScroll(nil \"n\"     t)")
    ("Floorplan/P&R" "Ctrl<Key>Up"    "geScroll(nil \"n\"     t)")
    ("Layout" "Ctrl<Key>R9"           "geScroll(nil \"ne\"    t)")
    ("Floorplan/P&R" "Ctrl<Key>R9"    "geScroll(nil \"ne\"    t)")
    ("Layout" "Ctrl<Key>Left"         "geScroll(nil \"w\"     t)")
    ("Floorplan/P&R" "Ctrl<Key>Left"  "geScroll(nil \"w\"     t)")
    ("Layout" "Ctrl<Key>R11"          "geScroll(nil \"\"      t)")
    ("Floorplan/P&R" "Ctrl<Key>R11"   "geScroll(nil \"\"      t)")
    ("Layout" "Ctrl<Key>Right"        "geScroll(nil \"e\"     t)")
    ("Floorplan/P&R" "Ctrl<Key>Right" "geScroll(nil \"e\"     t)")
    ("Layout" "Ctrl<Key>R13"          "geScroll(nil \"sw\"    t)")
    ("Floorplan/P&R" "Ctrl<Key>R13"   "geScroll(nil \"sw\"    t)")
    ("Layout" "Ctrl<Key>Down"         "geScroll(nil \"s\"     t)")
    ("Floorplan/P&R" "Ctrl<Key>Down"  "geScroll(nil \"s\"     t)")
    ("Layout" "Ctrl<Key>R15"          "geScroll(nil \"se\"    t)")
    ("Floorplan/P&R" "Ctrl<Key>R15"   "geScroll(nil \"se\"    t)")

) ; quote


;-----------------------------------------------------------------------
; Now go through list for each application, and set bindkeys from master list.
;-----------------------------------------------------------------------
foreach((app viewType)
    '("Layout"     "Graphics Browser" "Schematics" "Symbol" 		 "Abstract" 	   "Floorplan/P&R" "Show File")
    '("maskLayout" "maskLayout"       "schematic"  "schematicSymbol" "designPlanAbgen" "floorplan"  	always)

    when(
        (   viewType == 'always ||
            (
                deViewTypeIsRegistered(viewType) &&
                deGetAppInfo(viewType)->appName == app
            ) ; expression
        ) ; expression

        ; printf("Setting bindkeys for %s\n" app)
        foreach(key setof(line bindKeyList car(line) == app)

            apply('hiSetBindKey key)

        ) ; foreach

    ) ; when

) ; foreach

;-----------------------------------------------------------------------
; Initialise the legRpDelta variable for layout
;-----------------------------------------------------------------------
legRpDelta = 0.5
