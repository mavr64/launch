.class public Lcom/android/launcher4/DynamicGrid;
.super Ljava/lang/Object;
.source "DynamicGrid.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicGrid"


# instance fields
.field private mMinHeight:F

.field private mMinWidth:F

.field private mProfile:Lcom/android/launcher4/DeviceProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIII)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "minWidthPx"    # I
    .param p4, "minHeightPx"    # I
    .param p5, "widthPx"    # I
    .param p6, "heightPx"    # I
    .param p7, "awPx"    # I
    .param p8, "ahPx"    # I

    .prologue
    .line 470
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 473
    .local v12, "dm":Landroid/util/DisplayMetrics;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v11, "deviceProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/DeviceProfile;>;"
    sget-boolean v1, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v1, :cond_0

    const/4 v13, 0x0

    .line 477
    .local v13, "hasAA":Z
    :goto_0
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .line 478
    .local v18, "iconSize":I
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 479
    .local v20, "numRows":I
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 480
    .local v19, "numCols":I
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 481
    .local v14, "hotseatIcon_3G":I
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 482
    .local v15, "hotseatIcon_wifi":I
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 483
    .local v16, "iHotseatCount":I
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 485
    .local v17, "iShortCut_textSize":I
    sget-boolean v1, Lcom/android/launcher4/LauncherApplication;->is3g:Z

    if-eqz v1, :cond_1

    .line 486
    new-instance v1, Lcom/android/launcher4/DeviceProfile;

    const-string v2, "fyt 11"

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v4, 0x43f00000    # 480.0f

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 487
    move/from16 v0, v17

    int-to-float v8, v0

    move/from16 v0, v16

    int-to-float v9, v0

    int-to-float v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher4/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFF)V

    .line 486
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Lcom/android/launcher4/DeviceProfile;

    const-string v2, "fyt 11"

    const/high16 v3, 0x44800000    # 1024.0f

    const/high16 v4, 0x44160000    # 600.0f

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 489
    move/from16 v0, v17

    int-to-float v8, v0

    move/from16 v0, v16

    int-to-float v9, v0

    int-to-float v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher4/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFF)V

    .line 488
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :goto_1
    move/from16 v0, p3

    invoke-static {v0, v12}, Lcom/android/launcher4/DynamicGrid;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher4/DynamicGrid;->mMinWidth:F

    .line 502
    move/from16 v0, p4

    invoke-static {v0, v12}, Lcom/android/launcher4/DynamicGrid;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher4/DynamicGrid;->mMinHeight:F

    .line 503
    new-instance v1, Lcom/android/launcher4/DeviceProfile;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DynamicGrid;->mMinWidth:F

    .line 504
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DynamicGrid;->mMinHeight:F

    move-object/from16 v2, p1

    move-object v3, v11

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher4/DeviceProfile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILandroid/content/res/Resources;)V

    .line 503
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    .line 505
    return-void

    .line 474
    .end local v13    # "hasAA":Z
    .end local v14    # "hotseatIcon_3G":I
    .end local v15    # "hotseatIcon_wifi":I
    .end local v16    # "iHotseatCount":I
    .end local v17    # "iShortCut_textSize":I
    .end local v18    # "iconSize":I
    .end local v19    # "numCols":I
    .end local v20    # "numRows":I
    :cond_0
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 493
    .restart local v13    # "hasAA":Z
    .restart local v14    # "hotseatIcon_3G":I
    .restart local v15    # "hotseatIcon_wifi":I
    .restart local v16    # "iHotseatCount":I
    .restart local v17    # "iShortCut_textSize":I
    .restart local v18    # "iconSize":I
    .restart local v19    # "numCols":I
    .restart local v20    # "numRows":I
    :cond_1
    new-instance v1, Lcom/android/launcher4/DeviceProfile;

    const-string v2, "fyt 10"

    const/high16 v3, 0x44800000    # 1024.0f

    const/high16 v4, 0x44160000    # 600.0f

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 494
    move/from16 v0, v17

    int-to-float v8, v0

    move/from16 v0, v16

    int-to-float v9, v0

    int-to-float v10, v15

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher4/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFF)V

    .line 493
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v1, Lcom/android/launcher4/DeviceProfile;

    const-string v2, "fyt 12"

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v4, 0x43f00000    # 480.0f

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 496
    move/from16 v0, v17

    int-to-float v8, v0

    move/from16 v0, v16

    int-to-float v9, v0

    int-to-float v10, v15

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher4/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFF)V

    .line 495
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v1, Lcom/android/launcher4/DeviceProfile;

    const-string v2, "fyt 12"

    const/high16 v3, 0x44750000    # 980.0f

    const/high16 v4, 0x43d20000    # 420.0f

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 498
    move/from16 v0, v17

    int-to-float v8, v0

    move/from16 v0, v16

    int-to-float v9, v0

    int-to-float v10, v15

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher4/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFF)V

    .line 497
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static dpiFromPx(ILandroid/util/DisplayMetrics;)F
    .locals 3
    .param p0, "size"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 455
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    .line 456
    const/high16 v2, 0x43200000    # 160.0f

    .line 455
    div-float v0, v1, v2

    .line 457
    .local v0, "densityRatio":F
    int-to-float v1, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 462
    const/4 v0, 0x1

    .line 461
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 467
    const/4 v0, 0x2

    .line 466
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method getDeviceProfile()Lcom/android/launcher4/DeviceProfile;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------- DYNAMIC GRID ------- \nWd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->minWidthDps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Hd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->minHeightDps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    const-string v1, ", W: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", H: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->heightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    const-string v1, " [r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->numRows:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    const-string v1, ", is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", its: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->cellWidthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 518
    const-string v1, ", ch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->cellHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->numHotseatIcons:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", his: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/android/launcher4/DynamicGrid;->mProfile:Lcom/android/launcher4/DeviceProfile;

    iget v1, v1, Lcom/android/launcher4/DeviceProfile;->hotseatIconSizePx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
