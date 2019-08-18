.class Lcom/android/launcher4/DeviceProfile;
.super Ljava/lang/Object;
.source "DynamicGrid.java"


# instance fields
.field allAppsNumCols:I

.field allAppsNumRows:I

.field availableHeightPx:I

.field availableWidthPx:I

.field cellHeightPx:I

.field cellWidthPx:I

.field defaultWidgetPadding:Landroid/graphics/Rect;

.field desiredWorkspaceLeftRightMarginPx:I

.field drawableArray:[I

.field edgeMarginPx:I

.field folderBackgroundOffset:I

.field folderCellHeightPx:I

.field folderCellWidthPx:I

.field folderIconSizePx:I

.field heightPx:I

.field hotseatAllAppsRank:I

.field hotseatBarHeightPx:I

.field hotseatCellHeightPx:I

.field hotseatCellWidthPx:I

.field hotseatIconSize:F

.field hotseatIconSizePx:I

.field iconSize:F

.field iconSizePx:I

.field iconTextSize:F

.field iconTextSizePx:I

.field isLandscape:Z

.field isLargeTablet:Z

.field isTablet:Z

.field mDefualtIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field minHeightDps:F

.field minWidthDps:F

.field name:Ljava/lang/String;

.field nameArray:[Ljava/lang/String;

.field numColumns:F

.field numHotseatIcons:F

.field numRows:F

.field pageIndicatorHeightPx:I

.field searchBarHeightPx:I

.field searchBarSpaceHeightPx:I

.field searchBarSpaceMaxWidthPx:I

.field searchBarSpaceWidthPx:I

.field transposeLayoutWithOrientation:Z

.field widthPx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILandroid/content/res/Resources;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "minWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "wPx"    # I
    .param p6, "hPx"    # I
    .param p7, "awPx"    # I
    .param p8, "ahPx"    # I
    .param p9, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/DeviceProfile;",
            ">;FFIIII",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/DeviceProfile;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/DeviceProfile;->mDefualtIcons:Ljava/util/HashMap;

    .line 147
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "navi"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 148
    const-string v6, "com.syu.radio"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 149
    const-string v6, "com.syu.bt"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/DeviceProfile;->nameArray:[Ljava/lang/String;

    .line 151
    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v6

    iget v6, v6, Lshare/ResValue;->car_navi_icon:I

    aput v6, v4, v5

    const/4 v5, 0x1

    .line 152
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v6

    iget v6, v6, Lshare/ResValue;->car_radio_icon:I

    aput v6, v4, v5

    const/4 v5, 0x2

    .line 153
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v6

    iget v6, v6, Lshare/ResValue;->car_bt_icon:I

    aput v6, v4, v5

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/DeviceProfile;->drawableArray:[I

    .line 162
    invoke-virtual/range {p9 .. p9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 164
    .local v11, "dm":Landroid/util/DisplayMetrics;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v16, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/DeviceProfileQuery;>;"
    const v4, 0x7f0a0007

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 165
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher4/DeviceProfile;->transposeLayoutWithOrientation:Z

    .line 167
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    .line 168
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    .line 169
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-direct {v10, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v10, "cn":Landroid/content/ComponentName;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    .line 172
    const/high16 v4, 0x7f0d0000

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    .line 173
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 174
    const v4, 0x7f0d0003

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->pageIndicatorHeightPx:I

    .line 177
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 180
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->numRows:F

    .line 182
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 183
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 186
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    .line 188
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 189
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 192
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->iconSize:F

    .line 193
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->iconSize:F

    invoke-static {v4, v11}, Lcom/android/launcher4/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    .line 196
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    .line 201
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    invoke-static {v4, v11}, Lcom/android/launcher4/DynamicGrid;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->iconTextSizePx:I

    .line 204
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 205
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->numHotseatIcons:F

    .line 210
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 211
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 215
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    .line 216
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    invoke-static {v4, v11}, Lcom/android/launcher4/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatIconSizePx:I

    .line 217
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->numHotseatIcons:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatAllAppsRank:I

    move-object/from16 v4, p0

    move-object/from16 v5, p9

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 220
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher4/DeviceProfile;->updateFromConfiguration(Landroid/content/res/Resources;IIII)V

    .line 223
    const v4, 0x7f0d0001

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->searchBarSpaceMaxWidthPx:I

    .line 224
    const v4, 0x7f0d0002

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->searchBarHeightPx:I

    .line 225
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->searchBarSpaceMaxWidthPx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->widthPx:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->searchBarSpaceWidthPx:I

    .line 226
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->searchBarHeightPx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 229
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 230
    .local v17, "textPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->iconTextSizePx:I

    int-to-float v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 231
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 232
    .local v12, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->cellWidthPx:I

    .line 234
    sget-object v4, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 235
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    sget-object v5, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 236
    iget v5, v12, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v12, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    add-int/2addr v4, v5

    .line 237
    sget-object v5, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 235
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->cellHeightPx:I

    .line 244
    :goto_6
    sget-object v4, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatBarHeightPx:I

    .line 252
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatCellWidthPx:I

    .line 253
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatCellHeightPx:I

    .line 256
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->cellWidthPx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->folderCellWidthPx:I

    .line 257
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->cellHeightPx:I

    const/high16 v5, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->folderCellHeightPx:I

    .line 258
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    neg-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->folderBackgroundOffset:I

    .line 259
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->folderBackgroundOffset:I

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->folderIconSizePx:I

    .line 261
    const v4, 0x7f0a000c

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DeviceProfile;->nameArray:[Ljava/lang/String;

    array-length v4, v4

    if-lt v13, v4, :cond_9

    .line 268
    .end local v13    # "i":I
    :cond_0
    return-void

    .line 177
    .end local v12    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v17    # "textPaint":Landroid/graphics/Paint;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/DeviceProfile;

    .line 178
    .local v15, "p":Lcom/android/launcher4/DeviceProfile;
    new-instance v5, Lcom/android/launcher4/DeviceProfileQuery;

    iget v6, v15, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    iget v7, v15, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    iget v8, v15, Lcom/android/launcher4/DeviceProfile;->numRows:F

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher4/DeviceProfileQuery;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 183
    .end local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/DeviceProfile;

    .line 184
    .restart local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    new-instance v5, Lcom/android/launcher4/DeviceProfileQuery;

    iget v6, v15, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    iget v7, v15, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    iget v8, v15, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher4/DeviceProfileQuery;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 189
    .end local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/DeviceProfile;

    .line 190
    .restart local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    new-instance v5, Lcom/android/launcher4/DeviceProfileQuery;

    iget v6, v15, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    iget v7, v15, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    iget v8, v15, Lcom/android/launcher4/DeviceProfile;->iconSize:F

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher4/DeviceProfileQuery;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 197
    .end local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/DeviceProfile;

    .line 198
    .restart local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    new-instance v5, Lcom/android/launcher4/DeviceProfileQuery;

    iget v6, v15, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    iget v7, v15, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    iget v8, v15, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher4/DeviceProfileQuery;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 205
    .end local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/DeviceProfile;

    .line 206
    .restart local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    new-instance v5, Lcom/android/launcher4/DeviceProfileQuery;

    iget v6, v15, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    iget v7, v15, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    iget v8, v15, Lcom/android/launcher4/DeviceProfile;->numHotseatIcons:F

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher4/DeviceProfileQuery;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 211
    .end local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/DeviceProfile;

    .line 212
    .restart local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    new-instance v5, Lcom/android/launcher4/DeviceProfileQuery;

    iget v6, v15, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    iget v7, v15, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    iget v8, v15, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher4/DeviceProfileQuery;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 239
    .end local v15    # "p":Lcom/android/launcher4/DeviceProfile;
    .restart local v12    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .restart local v17    # "textPaint":Landroid/graphics/Paint;
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    sget-object v5, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->cellHeightPx:I

    goto/16 :goto_6

    .line 247
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/DeviceProfile;->hotseatBarHeightPx:I

    goto/16 :goto_7

    .line 263
    .restart local v13    # "i":I
    :cond_9
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v14, "mDefaultIcon":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DeviceProfile;->nameArray:[Ljava/lang/String;

    aget-object v4, v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/DeviceProfile;->drawableArray:[I

    aget v5, v5, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DeviceProfile;->mDefualtIcons:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8
.end method

.method constructor <init>(Ljava/lang/String;FFFFFFFF)V
    .locals 6
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "w"    # F
    .param p3, "h"    # F
    .param p4, "r"    # F
    .param p5, "c"    # F
    .param p6, "is"    # F
    .param p7, "its"    # F
    .param p8, "hs"    # F
    .param p9, "his"    # F

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/DeviceProfile;->mDefualtIcons:Ljava/util/HashMap;

    .line 147
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "navi"

    aput-object v1, v0, v2

    .line 148
    const-string v1, "com.syu.radio"

    aput-object v1, v0, v3

    .line 149
    const-string v1, "com.syu.bt"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/launcher4/DeviceProfile;->nameArray:[Ljava/lang/String;

    .line 151
    new-array v0, v5, [I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->car_navi_icon:I

    aput v1, v0, v2

    .line 152
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->car_radio_icon:I

    aput v1, v0, v3

    .line 153
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->car_bt_icon:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/launcher4/DeviceProfile;->drawableArray:[I

    .line 131
    sget-boolean v0, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    rem-float v0, p8, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    .line 133
    const-string v1, "All Device Profiles must have an odd number of hotseat spaces"

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/android/launcher4/DeviceProfile;->name:Ljava/lang/String;

    .line 137
    iput p2, p0, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    .line 138
    iput p3, p0, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    .line 139
    iput p4, p0, Lcom/android/launcher4/DeviceProfile;->numRows:F

    .line 140
    iput p5, p0, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    .line 141
    iput p6, p0, Lcom/android/launcher4/DeviceProfile;->iconSize:F

    .line 142
    iput p7, p0, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    .line 143
    iput p8, p0, Lcom/android/launcher4/DeviceProfile;->numHotseatIcons:F

    .line 144
    iput p9, p0, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    .line 145
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/DeviceProfile;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/DeviceProfile;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    return v0
.end method

.method private dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4
    .param p1, "p0"    # Landroid/graphics/PointF;
    .param p2, "p1"    # Landroid/graphics/PointF;

    .prologue
    .line 287
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 288
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 287
    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private invDistWeightedInterpolate(FFLjava/util/ArrayList;)F
    .locals 10
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/DeviceProfileQuery;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 301
    .local p3, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/DeviceProfileQuery;>;"
    const/4 v5, 0x0

    .line 302
    .local v5, "sum":F
    const/4 v7, 0x0

    .line 303
    .local v7, "weights":F
    const/high16 v4, 0x40a00000    # 5.0f

    .line 304
    .local v4, "pow":F
    const/high16 v1, 0x40400000    # 3.0f

    .line 305
    .local v1, "kNearestNeighbors":F
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 307
    .local v8, "xy":Landroid/graphics/PointF;
    move-object v3, p3

    .line 309
    .local v3, "pointsByNearness":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/DeviceProfileQuery;>;"
    new-instance v9, Lcom/android/launcher4/DeviceProfile$1;

    invoke-direct {v9, p0, v8}, Lcom/android/launcher4/DeviceProfile$1;-><init>(Lcom/android/launcher4/DeviceProfile;Landroid/graphics/PointF;)V

    .line 308
    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v0, v9, :cond_0

    .line 327
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v0, v9, :cond_3

    move v9, v5

    .line 335
    :goto_2
    return v9

    .line 317
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/DeviceProfileQuery;

    .line 318
    .local v2, "p":Lcom/android/launcher4/DeviceProfileQuery;
    int-to-float v9, v0

    cmpg-float v9, v9, v1

    if-gez v9, :cond_2

    .line 319
    iget-object v9, v2, Lcom/android/launcher4/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    invoke-direct {p0, v8, v9, v4}, Lcom/android/launcher4/DeviceProfile;->weight(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v6

    .line 320
    .local v6, "w":F
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v9, v6, v9

    if-nez v9, :cond_1

    .line 321
    iget v9, v2, Lcom/android/launcher4/DeviceProfileQuery;->value:F

    goto :goto_2

    .line 323
    :cond_1
    add-float/2addr v7, v6

    .line 316
    .end local v6    # "w":F
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v2    # "p":Lcom/android/launcher4/DeviceProfileQuery;
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/DeviceProfileQuery;

    .line 329
    .restart local v2    # "p":Lcom/android/launcher4/DeviceProfileQuery;
    int-to-float v9, v0

    cmpg-float v9, v9, v1

    if-gez v9, :cond_4

    .line 330
    iget-object v9, v2, Lcom/android/launcher4/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    invoke-direct {p0, v8, v9, v4}, Lcom/android/launcher4/DeviceProfile;->weight(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v6

    .line 331
    .restart local v6    # "w":F
    iget v9, v2, Lcom/android/launcher4/DeviceProfileQuery;->value:F

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    add-float/2addr v5, v9

    .line 327
    .end local v6    # "w":F
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private weight(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F
    .locals 8
    .param p1, "a"    # Landroid/graphics/PointF;
    .param p2, "b"    # Landroid/graphics/PointF;
    .param p3, "pow"    # F

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/DeviceProfile;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 293
    .local v0, "d":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 294
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 296
    :goto_0
    return v1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v4, v0

    float-to-double v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_0
.end method


# virtual methods
.method calculateCellHeight(II)I
    .locals 1
    .param p1, "height"    # I
    .param p2, "countY"    # I

    .prologue
    .line 364
    div-int v0, p1, p2

    return v0
.end method

.method calculateCellWidth(II)I
    .locals 1
    .param p1, "width"    # I
    .param p2, "countX"    # I

    .prologue
    .line 360
    div-int v0, p1, p2

    return v0
.end method

.method getHotseatRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 355
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher4/DeviceProfile;->availableHeightPx:I

    iget v3, p0, Lcom/android/launcher4/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v2, v3

    .line 356
    iget v3, p0, Lcom/android/launcher4/DeviceProfile;->availableWidthPx:I

    const v4, 0x7fffffff

    .line 355
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method getWorkspacePadding(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    .line 339
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 340
    .local v1, "padding":Landroid/graphics/Rect;
    if-nez p1, :cond_0

    iget v3, p0, Lcom/android/launcher4/DeviceProfile;->widthPx:I

    .line 341
    iget v4, p0, Lcom/android/launcher4/DeviceProfile;->heightPx:I

    .line 340
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 342
    .local v2, "width":I
    :goto_0
    iget v3, p0, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    iget v5, p0, Lcom/android/launcher4/DeviceProfile;->cellWidthPx:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 343
    .local v0, "gap":I
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 344
    sget-object v4, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 345
    sget-object v5, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 347
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d006b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 343
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 349
    return-object v1

    .line 341
    .end local v0    # "gap":I
    .end local v2    # "width":I
    :cond_0
    iget v3, p0, Lcom/android/launcher4/DeviceProfile;->widthPx:I

    iget v4, p0, Lcom/android/launcher4/DeviceProfile;->heightPx:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method isLargeTablet()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/launcher4/DeviceProfile;->isLargeTablet:Z

    return v0
.end method

.method isPhone()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/launcher4/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher4/DeviceProfile;->isLargeTablet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTablet()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/launcher4/DeviceProfile;->isTablet:Z

    return v0
.end method

.method isVerticalBarLayout()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public layout(Lcom/android/launcher4/Launcher;)V
    .locals 13
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    const/4 v8, -0x1

    const/4 v12, -0x2

    .line 386
    invoke-virtual {p1}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 401
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/launcher4/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object v3

    .line 402
    .local v3, "qsbBar":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 404
    .local v5, "vglp":Landroid/view/ViewGroup$LayoutParams;
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 405
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 407
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .end local v5    # "vglp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const v8, 0x7f110072

    invoke-virtual {p1, v8}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 412
    .local v6, "voiceButtonProxy":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 413
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 414
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v8, 0x800035

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 415
    iget v8, p0, Lcom/android/launcher4/DeviceProfile;->widthPx:I

    iget v9, p0, Lcom/android/launcher4/DeviceProfile;->searchBarSpaceWidthPx:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 416
    iget v8, p0, Lcom/android/launcher4/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 420
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const v8, 0x7f11006a

    invoke-virtual {p1, v8}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 421
    .local v7, "workspace":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 422
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 423
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 424
    iget-boolean v8, p0, Lcom/android/launcher4/DeviceProfile;->isLandscape:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/launcher4/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 426
    .local v1, "padding":Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    .line 427
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    .line 426
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 428
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_2
    const v8, 0x7f110011

    invoke-virtual {p1, v8}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 435
    .local v2, "pageIndicator":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 436
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 437
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x51

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 438
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 439
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 440
    iget v8, p0, Lcom/android/launcher4/DeviceProfile;->hotseatBarHeightPx:I

    sget-object v9, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d006c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 441
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    return-void

    .line 425
    .end local v2    # "pageIndicator":Landroid/view/View;
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    const/4 v8, 0x1

    goto :goto_0
.end method

.method updateFromConfiguration(Landroid/content/res/Resources;IIII)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "wPx"    # I
    .param p3, "hPx"    # I
    .param p4, "awPx"    # I
    .param p5, "ahPx"    # I

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher4/DeviceProfile;->isLandscape:Z

    .line 273
    const v0, 0x7f0a0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher4/DeviceProfile;->isTablet:Z

    .line 274
    const v0, 0x7f0a0002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher4/DeviceProfile;->isLargeTablet:Z

    .line 275
    iput p2, p0, Lcom/android/launcher4/DeviceProfile;->widthPx:I

    .line 276
    iput p3, p0, Lcom/android/launcher4/DeviceProfile;->heightPx:I

    .line 277
    iput p4, p0, Lcom/android/launcher4/DeviceProfile;->availableWidthPx:I

    .line 278
    iput p5, p0, Lcom/android/launcher4/DeviceProfile;->availableHeightPx:I

    .line 281
    const v0, 0x7f0b001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 280
    iput v0, p0, Lcom/android/launcher4/DeviceProfile;->allAppsNumRows:I

    .line 283
    const v0, 0x7f0b001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 282
    iput v0, p0, Lcom/android/launcher4/DeviceProfile;->allAppsNumCols:I

    .line 284
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
