.class public Lcom/android/launcher4/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "ShortcutAndWidgetContainer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCountX:I

.field private mCountY:I

.field private mHeightGap:I

.field private mInvertIfRtl:Z

.field private mIsHotseatLayout:Z

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 53
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 54
    return-void
.end method

.method private invertLayoutHorizontally()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 228
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 232
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 96
    .local v0, "debug":Z
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 97
    return-void
.end method

.method getCellContentHeight()I
    .locals 4

    .prologue
    .line 137
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 138
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 139
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v3

    iget-boolean v2, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    if-eqz v2, :cond_0

    .line 140
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->hotseatCellHeightPx:I

    .line 139
    :goto_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 140
    :cond_0
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->cellHeightPx:I

    goto :goto_0
.end method

.method getCellContentWidth()I
    .locals 4

    .prologue
    .line 130
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 131
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 132
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v3

    iget-boolean v2, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    if-eqz v2, :cond_0

    .line 133
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->hotseatCellWidthPx:I

    .line 132
    :goto_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 133
    :cond_0
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->cellWidthPx:I

    goto :goto_0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 68
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 77
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 69
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 72
    .local v3, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_2

    iget v4, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_2

    .line 73
    iget v4, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_2

    iget v4, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-lt p2, v4, :cond_0

    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v7

    .line 145
    .local v7, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v7}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v13

    .line 146
    .local v13, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v1, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 147
    .local v1, "cellWidth":I
    iget v2, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 148
    .local v2, "cellHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 149
    .local v0, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget-boolean v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->isFullscreen:Z

    if-nez v3, :cond_1

    .line 150
    iget v3, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-direct {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    .line 151
    iget v6, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCountX:I

    .line 150
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher4/CellLayout$LayoutParams;->setup(IIIIZI)V

    .line 153
    instance-of v3, p1, Lcom/android/launcher4/LauncherAppWidgetHostView;

    if-nez v3, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v8

    .line 158
    .local v8, "cHeight":I
    const/4 v3, 0x0

    iget v4, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->height:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v10, v3

    .line 159
    .local v10, "cellPaddingY":I
    iget v3, v13, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v9, v3

    .line 160
    .local v9, "cellPaddingX":I
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v3, v10

    const/4 v4, 0x0

    invoke-virtual {p1, v9, v3, v9, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    .end local v8    # "cHeight":I
    .end local v9    # "cellPaddingX":I
    .end local v10    # "cellPaddingY":I
    :cond_0
    :goto_0
    iget v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 169
    .local v11, "childWidthMeasureSpec":I
    iget v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->height:I

    .line 170
    const/high16 v4, 0x40000000    # 2.0f

    .line 169
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 171
    .local v12, "childheightMeasureSpec":I
    invoke-virtual {p1, v11, v12}, Landroid/view/View;->measure(II)V

    .line 172
    return-void

    .line 163
    .end local v11    # "childWidthMeasureSpec":I
    .end local v12    # "childheightMeasureSpec":I
    :cond_1
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    .line 164
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v3

    iput v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->width:I

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v3

    iput v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 185
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-lt v12, v11, :cond_0

    .line 205
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, v12}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 187
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 188
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 189
    .local v13, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v9, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    .line 190
    .local v9, "childLeft":I
    iget v10, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    .line 191
    .local v10, "childTop":I
    iget v0, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 193
    iget-boolean v0, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->dropped:Z

    .line 196
    iget-object v7, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 197
    .local v7, "cellXY":[I
    invoke-virtual {p0, v7}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 198
    iget-object v0, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 199
    const-string v2, "android.home.drop"

    .line 200
    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 201
    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/android/launcher4/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 198
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 185
    .end local v7    # "cellXY":[I
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v13    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 103
    .local v1, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 104
    .local v4, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 105
    .local v2, "heightSpecSize":I
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    .line 107
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 113
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 107
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 215
    if-eqz p1, :cond_0

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 220
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIIII)V
    .locals 0
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I
    .param p5, "countX"    # I
    .param p6, "countY"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 59
    iput p2, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 60
    iput p3, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mWidthGap:I

    .line 61
    iput p4, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mHeightGap:I

    .line 62
    iput p5, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCountX:I

    .line 63
    iput p6, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCountY:I

    .line 64
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 237
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 245
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 239
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 242
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 250
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 0
    .param p1, "invert"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 123
    return-void
.end method

.method public setIsHotseat(Z)V
    .locals 0
    .param p1, "isHotseat"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mIsHotseatLayout:Z

    .line 127
    return-void
.end method

.method public setupLp(Lcom/android/launcher4/CellLayout$LayoutParams;)V
    .locals 7
    .param p1, "lp"    # Lcom/android/launcher4/CellLayout$LayoutParams;

    .prologue
    .line 116
    iget v1, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-direct {p0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    .line 117
    iget v6, p0, Lcom/android/launcher4/ShortcutAndWidgetContainer;->mCountX:I

    move-object v0, p1

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher4/CellLayout$LayoutParams;->setup(IIIIZI)V

    .line 118
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method
