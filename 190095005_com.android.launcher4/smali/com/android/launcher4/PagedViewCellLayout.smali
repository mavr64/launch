.class public Lcom/android/launcher4/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayout.java"

# interfaces
.implements Lcom/android/launcher4/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mCellHeight:I

.field private mCellWidth:I

.field protected mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

.field private mHeightGap:I

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 60
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 61
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 62
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->cellWidthPx:I

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalCellWidth:I

    .line 63
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->cellHeightPx:I

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalCellHeight:I

    .line 64
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    .line 65
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    .line 66
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalHeightGap:I

    iput v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 68
    new-instance v2, Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-direct {v2, p1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    .line 69
    iget-object v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    .line 70
    iget-object v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->setGap(II)V

    .line 72
    iget-object v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewCellLayout;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/PagedViewCellLayout$LayoutParams;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    .prologue
    .line 97
    move-object v0, p4

    .line 101
    .local v0, "lp":Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 102
    iget v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 105
    iget v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    iput v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 106
    :cond_0
    iget v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    iput v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 108
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 109
    iget-object v1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/4 v1, 0x1

    .line 113
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public calculateCellCount(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxCellCountX"    # I
    .param p4, "maxCellCountY"    # I

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedViewCellLayout;->estimateCellHSpan(I)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    .line 347
    invoke-virtual {p0, p2}, Lcom/android/launcher4/PagedViewCellLayout;->estimateCellVSpan(I)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->requestLayout()V

    .line 349
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 89
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 93
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 374
    instance-of v0, p1, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    return v0
.end method

.method public enableCenteredContent(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    .line 266
    return-void
.end method

.method public estimateCellHSpan(I)I
    .locals 6
    .param p1, "width"    # I

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 316
    .local v0, "availWidth":I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 319
    .local v1, "n":I
    return v1
.end method

.method public estimateCellHeight(I)I
    .locals 1
    .param p1, "vSpan"    # I

    .prologue
    .line 364
    iget v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public estimateCellPosition(II)[I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 339
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 341
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 339
    return-object v0
.end method

.method public estimateCellVSpan(I)I
    .locals 6
    .param p1, "height"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 331
    .local v0, "availHeight":I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 334
    .local v1, "n":I
    return v1
.end method

.method public estimateCellWidth(I)I
    .locals 1
    .param p1, "hSpan"    # I

    .prologue
    .line 356
    iget v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 369
    new-instance v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 379
    new-instance v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellCountForDimensions(II)[I
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 288
    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 291
    .local v0, "smallerSize":I
    add-int v3, p1, v0

    div-int v1, v3, v0

    .line 292
    .local v1, "spanX":I
    add-int v3, p2, v0

    div-int v2, v3, v0

    .line 294
    .local v2, "spanY":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3
.end method

.method public getCellCountX()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher4/PagedViewCellLayoutChildren;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    return-object v0
.end method

.method getContentHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 223
    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    if-lez v1, :cond_0

    .line 224
    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    iget v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 226
    :cond_0
    return v0
.end method

.method getContentWidth()I
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method getWidthBeforeFirstLayout()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 230
    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    if-lez v1, :cond_0

    .line 231
    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 233
    :cond_0
    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    .line 304
    .local v0, "lp":Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->isDragging:Z

    .line 305
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 239
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 244
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingTop()I

    move-result v4

    .line 242
    sub-int v5, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 241
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 165
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 166
    .local v17, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 168
    .local v18, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 169
    .local v8, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 171
    .local v9, "heightSpecSize":I
    if-eqz v17, :cond_0

    if-nez v8, :cond_1

    .line 172
    :cond_0
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 175
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 176
    .local v14, "numWidthGaps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 178
    .local v13, "numHeightGaps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    .line 179
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingRight()I

    move-result v20

    sub-int v7, v19, v20

    .line 180
    .local v7, "hSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v9, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingBottom()I

    move-result v20

    sub-int v16, v19, v20

    .line 181
    .local v16, "vSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v6, v7, v19

    .line 182
    .local v6, "hFreeSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v15, v16, v19

    .line 183
    .local v15, "vFreeSpace":I
    if-lez v14, :cond_4

    div-int v19, v6, v14

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    .line 184
    if-lez v13, :cond_5

    div-int v19, v15, v13

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->setGap(II)V

    .line 193
    .end local v6    # "hFreeSpace":I
    .end local v7    # "hSpace":I
    .end local v15    # "vFreeSpace":I
    .end local v16    # "vSpace":I
    :goto_2
    move/from16 v12, v18

    .line 194
    .local v12, "newWidth":I
    move v11, v9

    .line 195
    .local v11, "newHeight":I
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingRight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    .line 196
    add-int v12, v19, v20

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingBottom()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    .line 198
    add-int v11, v19, v20

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher4/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 203
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getChildCount()I

    move-result v5

    .line 204
    .local v5, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-lt v10, v5, :cond_7

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher4/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 216
    return-void

    .line 183
    .end local v5    # "count":I
    .end local v10    # "i":I
    .end local v11    # "newHeight":I
    .end local v12    # "newWidth":I
    .restart local v6    # "hFreeSpace":I
    .restart local v7    # "hSpace":I
    .restart local v15    # "vFreeSpace":I
    .restart local v16    # "vSpace":I
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 184
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 188
    .end local v6    # "hFreeSpace":I
    .end local v7    # "hSpace":I
    .end local v15    # "vFreeSpace":I
    .end local v16    # "vSpace":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    goto/16 :goto_2

    .line 205
    .restart local v5    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "newHeight":I
    .restart local v12    # "newWidth":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher4/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v12, v19

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingRight()I

    move-result v20

    .line 207
    sub-int v19, v19, v20

    .line 208
    const/high16 v20, 0x40000000    # 2.0f

    .line 207
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 210
    .local v3, "childWidthMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v11, v19

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPaddingBottom()I

    move-result v20

    .line 210
    sub-int v19, v19, v20

    .line 211
    const/high16 v20, 0x40000000    # 2.0f

    .line 210
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 212
    .local v4, "childheightMeasureSpec":I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 204
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 249
    .local v4, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPageChildCount()I

    move-result v2

    .line 250
    .local v2, "count":I
    if-lez v2, :cond_1

    .line 252
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher4/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 254
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getPageChildCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 255
    .local v3, "numRows":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->getCellCountY()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 257
    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 259
    :cond_0
    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_2

    const/4 v4, 0x0

    .line 261
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "numRows":I
    :cond_1
    :goto_0
    return v4

    .line 259
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "numRows":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public removeAllViewsOnPage()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->removeAllViews()V

    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/PagedViewCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 120
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->removeViewAt(I)V

    .line 125
    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 132
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 135
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v2, v1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCellCount(II)V
    .locals 0
    .param p1, "xCount"    # I
    .param p2, "yCount"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountX:I

    .line 275
    iput p2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mCellCountY:I

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewCellLayout;->requestLayout()V

    .line 277
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 271
    return-void
.end method

.method public setGap(II)V
    .locals 1
    .param p1, "widthGap"    # I
    .param p2, "heightGap"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mWidthGap:I

    iput p1, p0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 281
    iput p2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mHeightGap:I

    iput p2, p0, Lcom/android/launcher4/PagedViewCellLayout;->mOriginalHeightGap:I

    .line 282
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout;->mChildren:Lcom/android/launcher4/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/PagedViewCellLayoutChildren;->setGap(II)V

    .line 283
    return-void
.end method
