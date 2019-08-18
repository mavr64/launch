.class public Lcom/android/launcher4/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 596
    .local v0, "count":I
    add-int v1, p1, p2

    .line 597
    .local v1, "newI":I
    :goto_0
    if-ltz v1, :cond_0

    if-lt v1, v0, :cond_2

    .line 604
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    .line 598
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 599
    .local v2, "newV":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher4/BubbleTextView;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/android/launcher4/FolderIcon;

    if-nez v3, :cond_1

    .line 602
    add-int/2addr v1, p2

    goto :goto_0
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 76
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0    # "p":Landroid/view/ViewParent;
    return-object v0

    .line 77
    .restart local v0    # "p":Landroid/view/ViewParent;
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "index"    # I

    .prologue
    .line 121
    check-cast p0, Lcom/android/launcher4/PagedView;

    .end local p0    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    .local v0, "page":Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher4/CellLayout;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Lcom/android/launcher4/CellLayout;

    .end local v0    # "page":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 126
    .restart local v0    # "page":Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher4/ShortcutAndWidgetContainer;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "i"    # I

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 559
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "layout"    # Lcom/android/launcher4/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher4/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v0

    .line 570
    .local v0, "cellCountX":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 571
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 575
    new-instance v4, Lcom/android/launcher4/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/android/launcher4/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 585
    return-object v3

    .line 573
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 22
    .param p0, "layout"    # Lcom/android/launcher4/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "lineDelta"    # I

    .prologue
    .line 624
    invoke-static/range {p0 .. p1}, Lcom/android/launcher4/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    .line 625
    .local v14, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 626
    .local v7, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v2

    .line 627
    .local v2, "cellCountY":I
    iget v10, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    .line 628
    .local v10, "row":I
    add-int v8, v10, p3

    .line 629
    .local v8, "newRow":I
    if-ltz v8, :cond_8

    if-ge v8, v2, :cond_8

    .line 630
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 631
    .local v3, "closestDistance":F
    const/4 v4, -0x1

    .line 632
    .local v4, "closestIndex":I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 633
    .local v6, "index":I
    if-gez p3, :cond_0

    const/4 v5, -0x1

    .line 634
    .local v5, "endIndex":I
    :goto_0
    if-ne v6, v5, :cond_1

    .line 653
    const/4 v15, -0x1

    if-le v4, v15, :cond_8

    .line 654
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 657
    .end local v3    # "closestDistance":F
    .end local v4    # "closestIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "index":I
    :goto_1
    return-object v15

    .line 633
    .restart local v3    # "closestDistance":F
    .restart local v4    # "closestIndex":I
    .restart local v6    # "index":I
    :cond_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 635
    .restart local v5    # "endIndex":I
    :cond_1
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 636
    .local v9, "newV":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 637
    .local v13, "tmpLp":Lcom/android/launcher4/CellLayout$LayoutParams;
    if-gez p3, :cond_5

    iget v15, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_4

    const/4 v11, 0x1

    .line 638
    .local v11, "satisfiesRow":Z
    :goto_2
    if-eqz v11, :cond_3

    .line 639
    instance-of v15, v9, Lcom/android/launcher4/BubbleTextView;

    if-nez v15, :cond_2

    instance-of v15, v9, Lcom/android/launcher4/FolderIcon;

    if-eqz v15, :cond_3

    .line 640
    :cond_2
    iget v15, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 641
    iget v15, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iget v0, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v15, v15, v18

    int-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    .line 640
    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    .line 642
    .local v12, "tmpDistance":F
    cmpg-float v15, v12, v3

    if-gez v15, :cond_3

    .line 643
    move v4, v6

    .line 644
    move v3, v12

    .line 647
    .end local v12    # "tmpDistance":F
    :cond_3
    if-gt v6, v5, :cond_7

    .line 648
    add-int/lit8 v6, v6, 0x1

    .line 649
    goto :goto_0

    .line 637
    .end local v11    # "satisfiesRow":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    iget v15, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_6

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 650
    .restart local v11    # "satisfiesRow":Z
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 657
    .end local v3    # "closestDistance":F
    .end local v4    # "closestIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "index":I
    .end local v9    # "newV":Landroid/view/View;
    .end local v11    # "satisfiesRow":Z
    .end local v13    # "tmpLp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :cond_8
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private static getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .param p0, "layout"    # Lcom/android/launcher4/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I
    .param p3, "delta"    # I

    .prologue
    .line 608
    invoke-static {p0, p1}, Lcom/android/launcher4/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 609
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher4/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "layout"    # Lcom/android/launcher4/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "delta"    # I

    .prologue
    .line 613
    invoke-static {p0, p1}, Lcom/android/launcher4/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 614
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher4/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 285
    .local v10, "itemContainer":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .local v16, "parentLayout":Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 286
    check-cast v22, Lcom/android/launcher4/CellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v6

    .local v6, "countX":I
    move-object/from16 v22, v16

    .line 287
    check-cast v22, Lcom/android/launcher4/CellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v7

    .line 296
    .local v7, "countY":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/PagedView;

    .line 297
    .local v5, "container":Lcom/android/launcher4/PagedView;
    invoke-static {v5}, Lcom/android/launcher4/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 298
    .local v17, "tabHost":Landroid/widget/TabHost;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v18

    .line 299
    .local v18, "tabs":Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 300
    .local v9, "iconIndex":I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 301
    .local v11, "itemCount":I
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher4/PagedView;->indexToPage(I)I

    move-result v15

    .line 302
    .local v15, "pageIndex":I
    invoke-virtual {v5}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v14

    .line 304
    .local v14, "pageCount":I
    rem-int v20, v9, v6

    .line 305
    .local v20, "x":I
    div-int v21, v9, v6

    .line 307
    .local v21, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 308
    .local v2, "action":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    const/4 v8, 0x1

    .line 309
    .local v8, "handleKeyEvent":Z
    :goto_1
    const/4 v12, 0x0

    .line 312
    .local v12, "newParent":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 313
    .local v3, "child":Landroid/view/View;
    const/16 v19, 0x0

    .line 314
    .local v19, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 432
    :goto_2
    return v19

    .line 289
    .end local v2    # "action":I
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "container":Lcom/android/launcher4/PagedView;
    .end local v6    # "countX":I
    .end local v7    # "countY":I
    .end local v8    # "handleKeyEvent":Z
    .end local v9    # "iconIndex":I
    .end local v10    # "itemContainer":Landroid/view/ViewGroup;
    .end local v11    # "itemCount":I
    .end local v12    # "newParent":Landroid/view/ViewGroup;
    .end local v14    # "pageCount":I
    .end local v15    # "pageIndex":I
    .end local v16    # "parentLayout":Landroid/view/ViewGroup;
    .end local v17    # "tabHost":Landroid/widget/TabHost;
    .end local v18    # "tabs":Landroid/widget/TabWidget;
    .end local v19    # "wasHandled":Z
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .restart local v16    # "parentLayout":Landroid/view/ViewGroup;
    move-object/from16 v10, v16

    .restart local v10    # "itemContainer":Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 290
    check-cast v22, Lcom/android/launcher4/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/PagedViewGridLayout;->getCellCountX()I

    move-result v6

    .restart local v6    # "countX":I
    move-object/from16 v22, v16

    .line 291
    check-cast v22, Lcom/android/launcher4/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/PagedViewGridLayout;->getCellCountY()I

    move-result v7

    .restart local v7    # "countY":I
    goto :goto_0

    .line 308
    .restart local v2    # "action":I
    .restart local v5    # "container":Lcom/android/launcher4/PagedView;
    .restart local v9    # "iconIndex":I
    .restart local v11    # "itemCount":I
    .restart local v14    # "pageCount":I
    .restart local v15    # "pageIndex":I
    .restart local v17    # "tabHost":Landroid/widget/TabHost;
    .restart local v18    # "tabs":Landroid/widget/TabWidget;
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 316
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "handleKeyEvent":Z
    .restart local v12    # "newParent":Landroid/view/ViewGroup;
    .restart local v19    # "wasHandled":Z
    :sswitch_0
    if-eqz v8, :cond_2

    .line 318
    if-lez v9, :cond_3

    .line 319
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 331
    :cond_2
    :goto_3
    const/16 v19, 0x1

    .line 332
    goto :goto_2

    .line 321
    :cond_3
    if-lez v15, :cond_2

    .line 322
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher4/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 323
    if-eqz v12, :cond_2

    .line 324
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 325
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 334
    :sswitch_1
    if-eqz v8, :cond_4

    .line 336
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 337
    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 349
    :cond_4
    :goto_4
    const/16 v19, 0x1

    .line 350
    goto :goto_2

    .line 339
    :cond_5
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 340
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher4/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 341
    if-eqz v12, :cond_4

    .line 342
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 343
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 344
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 352
    :sswitch_2
    if-eqz v8, :cond_6

    .line 354
    if-lez v21, :cond_7

    .line 355
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v6

    add-int v13, v22, v20

    .line 356
    .local v13, "newiconIndex":I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 361
    .end local v13    # "newiconIndex":I
    :cond_6
    :goto_5
    const/16 v19, 0x1

    .line 362
    goto/16 :goto_2

    .line 358
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_5

    .line 364
    :sswitch_3
    if-eqz v8, :cond_8

    .line 366
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 367
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v6

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 368
    .restart local v13    # "newiconIndex":I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 371
    .end local v13    # "newiconIndex":I
    :cond_8
    const/16 v19, 0x1

    .line 372
    goto/16 :goto_2

    .line 375
    :sswitch_4
    if-eqz v8, :cond_9

    move-object v4, v5

    .line 377
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 378
    .local v4, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 380
    .end local v4    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_9
    const/16 v19, 0x1

    .line 381
    goto/16 :goto_2

    .line 383
    :sswitch_5
    if-eqz v8, :cond_a

    .line 386
    if-lez v15, :cond_b

    .line 387
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher4/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 388
    if-eqz v12, :cond_a

    .line 389
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 390
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 391
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 397
    :cond_a
    :goto_6
    const/16 v19, 0x1

    .line 398
    goto/16 :goto_2

    .line 394
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 400
    :sswitch_6
    if-eqz v8, :cond_c

    .line 403
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_d

    .line 404
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher4/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 405
    if-eqz v12, :cond_c

    .line 406
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 407
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 408
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 414
    :cond_c
    :goto_7
    const/16 v19, 0x1

    .line 415
    goto/16 :goto_2

    .line 411
    :cond_d
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 417
    :sswitch_7
    if-eqz v8, :cond_e

    .line 419
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 421
    :cond_e
    const/16 v19, 0x1

    .line 422
    goto/16 :goto_2

    .line 424
    :sswitch_8
    if-eqz v8, :cond_f

    .line 426
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 428
    :cond_f
    const/16 v19, 0x1

    .line 429
    goto/16 :goto_2

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-static {p0}, Lcom/android/launcher4/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v4

    .line 87
    .local v4, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 88
    .local v1, "contents":Landroid/view/ViewGroup;
    const v6, 0x7f11000f

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "shop":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 91
    .local v0, "action":I
    if-eq v0, v2, :cond_1

    .line 92
    .local v2, "handleKeyEvent":Z
    :goto_0
    const/4 v5, 0x0

    .line 93
    .local v5, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 114
    :cond_0
    :goto_1
    :pswitch_0
    return v5

    .line 91
    .end local v2    # "handleKeyEvent":Z
    .end local v5    # "wasHandled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 95
    .restart local v2    # "handleKeyEvent":Z
    .restart local v5    # "wasHandled":Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 97
    if-eq p0, v3, :cond_2

    .line 98
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 101
    :cond_2
    const/4 v5, 0x1

    .line 102
    goto :goto_1

    .line 104
    :pswitch_2
    if-eqz v2, :cond_0

    .line 106
    if-ne p0, v3, :cond_0

    .line 107
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 108
    const/4 v5, 0x1

    .line 111
    goto :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 819
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 820
    .local v5, "parent":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/CellLayout;

    .line 821
    .local v3, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 822
    .local v6, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v6}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/Folder;

    .line 823
    .local v1, "folder":Lcom/android/launcher4/Folder;
    iget-object v7, v1, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    .line 825
    .local v7, "title":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 826
    .local v0, "action":I
    if-eq v0, v9, :cond_0

    move v2, v9

    .line 827
    .local v2, "handleKeyEvent":Z
    :goto_0
    const/4 v8, 0x0

    .line 828
    .local v8, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 896
    :goto_1
    return v8

    .line 826
    .end local v2    # "handleKeyEvent":Z
    .end local v8    # "wasHandled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 830
    .restart local v2    # "handleKeyEvent":Z
    .restart local v8    # "wasHandled":Z
    :sswitch_0
    if-eqz v2, :cond_1

    .line 832
    invoke-static {v3, v5, p0, v10}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 833
    .local v4, "newIcon":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 834
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 837
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_1
    const/4 v8, 0x1

    .line 838
    goto :goto_1

    .line 840
    :sswitch_1
    if-eqz v2, :cond_2

    .line 842
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 843
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 844
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 849
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v8, 0x1

    .line 850
    goto :goto_1

    .line 846
    .restart local v4    # "newIcon":Landroid/view/View;
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 852
    .end local v4    # "newIcon":Landroid/view/View;
    :sswitch_2
    if-eqz v2, :cond_4

    .line 854
    invoke-static {v3, v5, p0, v10}, Lcom/android/launcher4/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 855
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 856
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 859
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_4
    const/4 v8, 0x1

    .line 860
    goto :goto_1

    .line 862
    :sswitch_3
    if-eqz v2, :cond_5

    .line 864
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher4/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 865
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 866
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 871
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v8, 0x1

    .line 872
    goto :goto_1

    .line 868
    .restart local v4    # "newIcon":Landroid/view/View;
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 874
    .end local v4    # "newIcon":Landroid/view/View;
    :sswitch_4
    if-eqz v2, :cond_7

    .line 876
    invoke-static {v3, v5, v10, v9}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 877
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 878
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 881
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_7
    const/4 v8, 0x1

    .line 882
    goto :goto_1

    .line 884
    :sswitch_5
    if-eqz v2, :cond_8

    .line 887
    invoke-virtual {v5}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    .line 886
    invoke-static {v3, v5, v9, v10}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 888
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_8

    .line 889
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 892
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_8
    const/4 v8, 0x1

    .line 893
    goto :goto_1

    .line 828
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 14
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 494
    .local v9, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 495
    .local v5, "launcher":Landroid/view/ViewGroup;
    const v12, 0x7f11006a

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher4/Workspace;

    .line 496
    .local v11, "workspace":Lcom/android/launcher4/Workspace;
    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 497
    .local v2, "buttonIndex":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 498
    .local v1, "buttonCount":I
    invoke-virtual {v11}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v8

    .line 504
    .local v8, "pageIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 505
    .local v0, "action":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    const/4 v4, 0x1

    .line 506
    .local v4, "handleKeyEvent":Z
    :goto_0
    const/4 v10, 0x0

    .line 507
    .local v10, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 550
    :goto_1
    return v10

    .line 505
    .end local v4    # "handleKeyEvent":Z
    .end local v10    # "wasHandled":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 509
    .restart local v4    # "handleKeyEvent":Z
    .restart local v10    # "wasHandled":Z
    :pswitch_0
    if-eqz v4, :cond_1

    .line 511
    if-lez v2, :cond_2

    .line 512
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 517
    :cond_1
    :goto_2
    const/4 v10, 0x1

    .line 518
    goto :goto_1

    .line 514
    :cond_2
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 520
    :pswitch_1
    if-eqz v4, :cond_3

    .line 522
    add-int/lit8 v12, v1, -0x1

    if-ge v2, v12, :cond_4

    .line 523
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 528
    :cond_3
    :goto_3
    const/4 v10, 0x1

    .line 529
    goto :goto_1

    .line 525
    :cond_4
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 531
    :pswitch_2
    if-eqz v4, :cond_5

    .line 533
    invoke-virtual {v11, v8}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher4/CellLayout;

    .line 534
    .local v6, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 535
    .local v3, "children":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v6, v3, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 536
    .local v7, "newIcon":Landroid/view/View;
    if-eqz v7, :cond_6

    .line 537
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 542
    .end local v3    # "children":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    .end local v6    # "layout":Lcom/android/launcher4/CellLayout;
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_5
    :goto_4
    const/4 v10, 0x1

    .line 543
    goto :goto_1

    .line 539
    .restart local v3    # "children":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    .restart local v6    # "layout":Lcom/android/launcher4/CellLayout;
    .restart local v7    # "newIcon":Landroid/view/View;
    :cond_6
    invoke-virtual {v11}, Lcom/android/launcher4/Workspace;->requestFocus()Z

    goto :goto_4

    .line 546
    .end local v3    # "children":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    .end local v6    # "layout":Lcom/android/launcher4/CellLayout;
    .end local v7    # "newIcon":Landroid/view/View;
    :pswitch_3
    const/4 v10, 0x1

    .line 547
    goto :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 14
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 664
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 665
    .local v8, "parent":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual {v8}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/CellLayout;

    .line 666
    .local v4, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher4/Workspace;

    .line 667
    .local v11, "workspace":Lcom/android/launcher4/Workspace;
    invoke-virtual {v11}, Lcom/android/launcher4/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 668
    .local v3, "launcher":Landroid/view/ViewGroup;
    const v12, 0x7f11006d

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 669
    .local v9, "tabs":Landroid/view/ViewGroup;
    const v12, 0x7f11006b

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 670
    .local v2, "hotseat":Landroid/view/ViewGroup;
    invoke-virtual {v11, v4}, Lcom/android/launcher4/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 671
    .local v7, "pageIndex":I
    invoke-virtual {v11}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v6

    .line 673
    .local v6, "pageCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 674
    .local v0, "action":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_1

    const/4 v1, 0x1

    .line 675
    .local v1, "handleKeyEvent":Z
    :goto_0
    const/4 v10, 0x0

    .line 676
    .local v10, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 812
    :cond_0
    :goto_1
    return v10

    .line 674
    .end local v1    # "handleKeyEvent":Z
    .end local v10    # "wasHandled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 678
    .restart local v1    # "handleKeyEvent":Z
    .restart local v10    # "wasHandled":Z
    :sswitch_0
    if-eqz v1, :cond_2

    .line 680
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 681
    .local v5, "newIcon":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 682
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 697
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v10, 0x1

    .line 698
    goto :goto_1

    .line 684
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_3
    if-lez v7, :cond_2

    .line 685
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher4/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 687
    invoke-virtual {v8}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    .line 686
    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 688
    if-eqz v5, :cond_4

    .line 689
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 692
    :cond_4
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 700
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_1
    if-eqz v1, :cond_5

    .line 702
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 703
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 704
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 718
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v10, 0x1

    .line 719
    goto :goto_1

    .line 706
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_6
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_5

    .line 707
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher4/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 708
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 709
    if-eqz v5, :cond_7

    .line 710
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 713
    :cond_7
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 721
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_2
    if-eqz v1, :cond_0

    .line 723
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher4/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 724
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_8

    .line 725
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 726
    const/4 v10, 0x1

    .line 727
    goto :goto_1

    .line 728
    :cond_8
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    .line 733
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_3
    if-eqz v1, :cond_0

    .line 735
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher4/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 736
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_9

    .line 737
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 738
    const/4 v10, 0x1

    .line 739
    goto :goto_1

    :cond_9
    if-eqz v2, :cond_0

    .line 740
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    .line 745
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_4
    if-eqz v1, :cond_a

    .line 748
    if-lez v7, :cond_c

    .line 749
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher4/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 750
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 751
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_b

    .line 752
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 764
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_a
    :goto_4
    const/4 v10, 0x1

    .line 765
    goto/16 :goto_1

    .line 755
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_b
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 758
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 759
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_a

    .line 760
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 767
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_5
    if-eqz v1, :cond_d

    .line 770
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_f

    .line 771
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher4/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 772
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 773
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_e

    .line 774
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 787
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_d
    :goto_5
    const/4 v10, 0x1

    .line 788
    goto/16 :goto_1

    .line 777
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_e
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    goto :goto_5

    .line 781
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_f
    invoke-virtual {v8}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    .line 780
    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 782
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_d

    .line 783
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 790
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_6
    if-eqz v1, :cond_10

    .line 792
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 793
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_10

    .line 794
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 797
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_10
    const/4 v10, 0x1

    .line 798
    goto/16 :goto_1

    .line 800
    :sswitch_7
    if-eqz v1, :cond_11

    .line 803
    invoke-virtual {v8}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    .line 802
    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher4/FocusHelper;->getIconInDirection(Lcom/android/launcher4/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 804
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_11

    .line 805
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 808
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_11
    const/4 v10, 0x1

    .line 809
    goto/16 :goto_1

    .line 676
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method static handlePagedViewGridLayoutWidgetKeyEvent(Lcom/android/launcher4/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 23
    .param p0, "w"    # Lcom/android/launcher4/PagedViewWidget;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher4/PagedViewGridLayout;

    .line 136
    .local v13, "parent":Lcom/android/launcher4/PagedViewGridLayout;
    invoke-virtual {v13}, Lcom/android/launcher4/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher4/PagedView;

    .line 137
    .local v7, "container":Lcom/android/launcher4/PagedView;
    invoke-static {v7}, Lcom/android/launcher4/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v14

    .line 138
    .local v14, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v14}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v15

    .line 139
    .local v15, "tabs":Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher4/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v18

    .line 140
    .local v18, "widgetIndex":I
    invoke-virtual {v13}, Lcom/android/launcher4/PagedViewGridLayout;->getChildCount()I

    move-result v17

    .line 141
    .local v17, "widgetCount":I
    invoke-virtual {v7, v13}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/launcher4/PagedView;->indexToPage(I)I

    move-result v12

    .line 142
    .local v12, "pageIndex":I
    invoke-virtual {v7}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v11

    .line 143
    .local v11, "pageCount":I
    invoke-virtual {v13}, Lcom/android/launcher4/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 144
    .local v3, "cellCountX":I
    invoke-virtual {v13}, Lcom/android/launcher4/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 145
    .local v4, "cellCountY":I
    rem-int v19, v18, v3

    .line 146
    .local v19, "x":I
    div-int v20, v18, v3

    .line 148
    .local v20, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 149
    .local v2, "action":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v2, v0, :cond_0

    const/4 v8, 0x1

    .line 150
    .local v8, "handleKeyEvent":Z
    :goto_0
    const/4 v9, 0x0

    .line 153
    .local v9, "newParent":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 154
    .local v5, "child":Landroid/view/View;
    const/16 v16, 0x0

    .line 155
    .local v16, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 272
    :goto_1
    return v16

    .line 149
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "handleKeyEvent":Z
    .end local v9    # "newParent":Landroid/view/ViewGroup;
    .end local v16    # "wasHandled":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 157
    .restart local v5    # "child":Landroid/view/View;
    .restart local v8    # "handleKeyEvent":Z
    .restart local v9    # "newParent":Landroid/view/ViewGroup;
    .restart local v16    # "wasHandled":Z
    :sswitch_0
    if-eqz v8, :cond_1

    .line 159
    if-lez v18, :cond_2

    .line 160
    add-int/lit8 v21, v18, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 171
    :cond_1
    :goto_2
    const/16 v16, 0x1

    .line 172
    goto :goto_1

    .line 162
    :cond_2
    if-lez v12, :cond_1

    .line 163
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher4/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 164
    if-eqz v9, :cond_1

    .line 165
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 166
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 174
    :sswitch_1
    if-eqz v8, :cond_3

    .line 176
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 177
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 188
    :cond_3
    :goto_3
    const/16 v16, 0x1

    .line 189
    goto :goto_1

    .line 179
    :cond_4
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    .line 180
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher4/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 181
    if-eqz v9, :cond_3

    .line 182
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 183
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 191
    :sswitch_2
    if-eqz v8, :cond_5

    .line 193
    if-lez v20, :cond_6

    .line 194
    add-int/lit8 v21, v20, -0x1

    mul-int v21, v21, v3

    add-int v10, v21, v19

    .line 195
    .local v10, "newWidgetIndex":I
    invoke-virtual {v13, v10}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 196
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 201
    .end local v10    # "newWidgetIndex":I
    :cond_5
    :goto_4
    const/16 v16, 0x1

    .line 202
    goto :goto_1

    .line 198
    :cond_6
    invoke-virtual {v15}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_4

    .line 204
    :sswitch_3
    if-eqz v8, :cond_7

    .line 206
    add-int/lit8 v21, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 207
    add-int/lit8 v21, v17, -0x1

    add-int/lit8 v22, v20, 0x1

    mul-int v22, v22, v3

    add-int v22, v22, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 208
    .restart local v10    # "newWidgetIndex":I
    invoke-virtual {v13, v10}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 209
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 212
    .end local v10    # "newWidgetIndex":I
    :cond_7
    const/16 v16, 0x1

    .line 213
    goto/16 :goto_1

    .line 216
    :sswitch_4
    if-eqz v8, :cond_8

    move-object v6, v7

    .line 218
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 219
    .local v6, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 221
    .end local v6    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_8
    const/16 v16, 0x1

    .line 222
    goto/16 :goto_1

    .line 224
    :sswitch_5
    if-eqz v8, :cond_a

    .line 227
    if-lez v12, :cond_b

    .line 228
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher4/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 229
    if-eqz v9, :cond_9

    .line 230
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 235
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 237
    :cond_a
    const/16 v16, 0x1

    .line 238
    goto/16 :goto_1

    .line 233
    :cond_b
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 240
    :sswitch_6
    if-eqz v8, :cond_d

    .line 243
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_e

    .line 244
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher4/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 245
    if-eqz v9, :cond_c

    .line 246
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 251
    :cond_c
    :goto_6
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 253
    :cond_d
    const/16 v16, 0x1

    .line 254
    goto/16 :goto_1

    .line 249
    :cond_e
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    .line 256
    :sswitch_7
    if-eqz v8, :cond_f

    .line 258
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 259
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 261
    :cond_f
    const/16 v16, 0x1

    .line 262
    goto/16 :goto_1

    .line 264
    :sswitch_8
    if-eqz v8, :cond_10

    .line 266
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 268
    :cond_10
    const/16 v16, 0x1

    .line 269
    goto/16 :goto_1

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher4/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Lcom/android/launcher4/AccessibleTabView;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 439
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v8

    if-nez v8, :cond_0

    .line 486
    :goto_0
    return v7

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/FocusOnlyTabWidget;

    .line 442
    .local v3, "parent":Lcom/android/launcher4/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher4/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 443
    .local v5, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 444
    .local v1, "contents":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher4/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 445
    .local v4, "tabCount":I
    invoke-virtual {v3, p0}, Lcom/android/launcher4/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 447
    .local v6, "tabIndex":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 448
    .local v0, "action":I
    if-eq v0, v2, :cond_1

    .line 449
    .local v2, "handleKeyEvent":Z
    :goto_1
    const/4 v7, 0x0

    .line 450
    .local v7, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 475
    :pswitch_0
    const/4 v7, 0x1

    .line 476
    goto :goto_0

    .end local v2    # "handleKeyEvent":Z
    .end local v7    # "wasHandled":Z
    :cond_1
    move v2, v7

    .line 448
    goto :goto_1

    .line 452
    .restart local v2    # "handleKeyEvent":Z
    .restart local v7    # "wasHandled":Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 454
    if-lez v6, :cond_2

    .line 455
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher4/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 458
    :cond_2
    const/4 v7, 0x1

    .line 459
    goto :goto_0

    .line 461
    :pswitch_2
    if-eqz v2, :cond_3

    .line 463
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 464
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher4/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 471
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 472
    goto :goto_0

    .line 466
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher4/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 467
    invoke-virtual {p0}, Lcom/android/launcher4/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 478
    :pswitch_3
    if-eqz v2, :cond_5

    .line 480
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 482
    :cond_5
    const/4 v7, 0x1

    .line 483
    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
