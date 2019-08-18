.class public Lcom/android/launcher4/PagedViewCellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayoutChildren.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCenterContent:Z

.field private mHeightGap:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v1

    .line 49
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public enableCenteredContent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mCenterContent:Z

    .line 147
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v3

    .line 114
    .local v3, "count":I
    const/4 v9, 0x0

    .line 115
    .local v9, "offsetX":I
    iget-boolean v10, p0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mCenterContent:Z

    if-eqz v10, :cond_0

    if-lez v3, :cond_0

    .line 117
    const/4 v7, 0x0

    .line 118
    .local v7, "maxRowX":I
    const v8, 0x7fffffff

    .line 119
    .local v8, "minRowX":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 128
    sub-int v6, v7, v8

    .line 129
    .local v6, "maxRowWidth":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v6

    div-int/lit8 v9, v10, 0x2

    .line 132
    .end local v4    # "i":I
    .end local v6    # "maxRowWidth":I
    .end local v7    # "maxRowX":I
    .end local v8    # "minRowX":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-lt v4, v3, :cond_3

    .line 143
    return-void

    .line 120
    .restart local v7    # "maxRowX":I
    .restart local v8    # "minRowX":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    .line 124
    .local v5, "lp":Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
    iget v10, v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->x:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 125
    iget v10, v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->x:I

    iget v11, v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->width:I

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 119
    .end local v5    # "lp":Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "maxRowX":I
    .end local v8    # "minRowX":I
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_4

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    .line 138
    .restart local v5    # "lp":Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
    iget v10, v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->x:I

    add-int v1, v9, v10

    .line 139
    .local v1, "childLeft":I
    iget v2, v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->y:I

    .line 140
    .local v2, "childTop":I
    iget v10, v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->width:I

    add-int/2addr v10, v1

    iget v11, v5, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->height:I

    add-int/2addr v11, v2

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 132
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "lp":Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 79
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 80
    .local v17, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 82
    .local v18, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 83
    .local v14, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 85
    .local v15, "heightSpecSize":I
    if-eqz v17, :cond_0

    if-nez v14, :cond_1

    .line 86
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v13

    .line 90
    .local v13, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v0, v13, :cond_2

    .line 107
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->setMeasuredDimension(II)V

    .line 108
    return-void

    .line 91
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 93
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    .line 94
    .local v2, "lp":Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 95
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mCellWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mCellHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mWidthGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mHeightGap:I

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getPaddingLeft()I

    move-result v8

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getPaddingTop()I

    move-result v9

    .line 94
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->setup(Landroid/content/Context;IIIIII)V

    .line 99
    iget v3, v2, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->width:I

    .line 100
    const/high16 v4, 0x40000000    # 2.0f

    .line 99
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 101
    .local v11, "childWidthMeasureSpec":I
    iget v3, v2, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->height:I

    .line 102
    const/high16 v4, 0x40000000    # 2.0f

    .line 101
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 104
    .local v12, "childheightMeasureSpec":I
    invoke-virtual {v10, v11, v12}, Landroid/view/View;->measure(II)V

    .line 90
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 75
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mCellWidth:I

    .line 63
    iput p2, p0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mCellHeight:I

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->requestLayout()V

    .line 65
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 152
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 160
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 154
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 152
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGap(II)V
    .locals 0
    .param p1, "widthGap"    # I
    .param p2, "heightGap"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mWidthGap:I

    .line 57
    iput p2, p0, Lcom/android/launcher4/PagedViewCellLayoutChildren;->mHeightGap:I

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->requestLayout()V

    .line 59
    return-void
.end method
