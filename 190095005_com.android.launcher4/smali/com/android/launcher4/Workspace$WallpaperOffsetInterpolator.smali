.class Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperOffsetInterpolator"
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field private final MIN_PARALLAX_PAGE_SPAN:I

.field mAnimating:Z

.field mAnimationStartOffset:F

.field mAnimationStartTime:J

.field mChoreographer:Landroid/view/Choreographer;

.field mCurrentOffset:F

.field mFinalOffset:F

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mNumScreens:I

.field mWaitingForUpdate:Z

.field final synthetic this$0:Lcom/android/launcher4/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/Workspace;)V
    .locals 2

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 1293
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1300
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->ANIMATION_DURATION:I

    .line 1303
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->MIN_PARALLAX_PAGE_SPAN:I

    .line 1307
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    .line 1308
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1309
    return-void
.end method

.method private animateToFinal()V
    .locals 2

    .prologue
    .line 1437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    .line 1438
    iget v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    iput v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    .line 1439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mAnimationStartTime:J

    .line 1440
    return-void
.end method

.method private getNumScreensExcludingEmptyAndCustom()I
    .locals 3

    .prologue
    .line 1417
    iget-object v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1418
    iget-object v2, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v2

    .line 1417
    sub-int v0, v1, v2

    .line 1419
    .local v0, "numScrollingPages":I
    return v0
.end method

.method private numEmptyScreensToIgnore()I
    .locals 3

    .prologue
    .line 1407
    iget-object v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v2

    sub-int v0, v1, v2

    .line 1408
    .local v0, "numScrollingPages":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1410
    const/4 v1, 0x1

    .line 1412
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scheduleUpdate()V
    .locals 1

    .prologue
    .line 1461
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    .line 1465
    :cond_0
    return-void
.end method

.method private setWallpaperOffsetSteps()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1444
    iget-object v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0}, Lcom/android/launcher4/Workspace;->access$2(Lcom/android/launcher4/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 1445
    iget-object v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 1444
    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 1446
    return-void
.end method

.method private updateOffset(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 1317
    iget-boolean v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1318
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    .line 1319
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v1}, Lcom/android/launcher4/Workspace;->access$1(Lcom/android/launcher4/Workspace;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1321
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v1}, Lcom/android/launcher4/Workspace;->access$2(Lcom/android/launcher4/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v2}, Lcom/android/launcher4/Workspace;->access$1(Lcom/android/launcher4/Workspace;)Landroid/os/IBinder;

    move-result-object v2

    .line 1322
    iget-object v3, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    iget-object v3, v3, Lcom/android/launcher4/Workspace;->mWallpaperOffset:Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v3}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1321
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1323
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->setWallpaperOffsetSteps()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :cond_1
    :goto_0
    return-void

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "JLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error updating wallpaper offset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 15

    .prologue
    .line 1355
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_0

    .line 1356
    const/4 v12, 0x0

    .line 1401
    :goto_0
    return v12

    .line 1360
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v1

    .line 1361
    .local v1, "emptyExtraPages":I
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v2

    .line 1364
    .local v2, "firstIndex":I
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    sub-int v4, v12, v1

    .line 1365
    .local v4, "lastIndex":I
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher4/Workspace;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1366
    move v11, v2

    .line 1367
    .local v11, "temp":I
    move v2, v4

    .line 1368
    move v4, v11

    .line 1371
    .end local v11    # "temp":I
    :cond_1
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12, v2}, Lcom/android/launcher4/Workspace;->getScrollForPage(I)I

    move-result v3

    .line 1372
    .local v3, "firstPageScrollX":I
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12, v4}, Lcom/android/launcher4/Workspace;->getScrollForPage(I)I

    move-result v12

    sub-int v10, v12, v3

    .line 1373
    .local v10, "scrollRange":I
    if-nez v10, :cond_2

    .line 1374
    const/4 v12, 0x0

    goto :goto_0

    .line 1381
    :cond_2
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher4/Workspace;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    .line 1382
    iget-object v13, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 1381
    invoke-virtual {v12, v13}, Lcom/android/launcher4/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .line 1382
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1383
    iget-object v13, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher4/Workspace;->getFirstChildLeft()I

    move-result v13

    sub-int v7, v12, v13

    .line 1385
    .local v7, "offsetForLayoutTransitionAnimation":I
    :goto_1
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher4/Workspace;->getScrollX()I

    move-result v12

    sub-int/2addr v12, v3

    sub-int v0, v12, v7

    .line 1388
    .local v0, "adjustedScroll":I
    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v0

    int-to-float v14, v10

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1389
    .local v6, "offset":F
    const/4 v12, 0x0

    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1393
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v5

    .line 1394
    .local v5, "numScrollingPages":I
    const/4 v12, 0x3

    .line 1395
    add-int/lit8 v13, v5, -0x1

    .line 1394
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1399
    .local v9, "parallaxPageSpan":I
    iget-object v12, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher4/Workspace;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1400
    sub-int v12, v9, v5

    add-int/lit8 v8, v12, 0x1

    .line 1401
    .local v8, "padding":I
    :goto_2
    add-int v12, v8, v5

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    mul-float/2addr v12, v6

    .line 1402
    int-to-float v13, v9

    .line 1401
    div-float/2addr v12, v13

    goto/16 :goto_0

    .line 1384
    .end local v0    # "adjustedScroll":I
    .end local v5    # "numScrollingPages":I
    .end local v6    # "offset":F
    .end local v7    # "offsetForLayoutTransitionAnimation":I
    .end local v8    # "padding":I
    .end local v9    # "parallaxPageSpan":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 1400
    .restart local v0    # "adjustedScroll":I
    .restart local v5    # "numScrollingPages":I
    .restart local v6    # "offset":F
    .restart local v7    # "offsetForLayoutTransitionAnimation":I
    .restart local v9    # "parallaxPageSpan":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v12, 0x33d6bf95    # 1.0E-7f

    .line 1332
    iget v2, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1333
    .local v2, "oldOffset":F
    iget-boolean v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    if-eqz v5, :cond_2

    .line 1334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1335
    iget-wide v10, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mAnimationStartTime:J

    .line 1334
    sub-long v0, v8, v10

    .line 1336
    .local v0, "durationSinceAnimation":J
    long-to-float v5, v0

    const/high16 v8, 0x437a0000    # 250.0f

    div-float v3, v5, v8

    .line 1337
    .local v3, "t0":F
    iget-object v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1338
    .local v4, "t1":F
    iget v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    .line 1339
    iget v8, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iget v9, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    add-float/2addr v5, v8

    .line 1338
    iput v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1340
    const-wide/16 v8, 0xfa

    cmp-long v5, v0, v8

    if-gez v5, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    .line 1345
    .end local v0    # "durationSinceAnimation":J
    .end local v3    # "t0":F
    .end local v4    # "t1":F
    :goto_1
    iget v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    iget v8, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v12

    if-lez v5, :cond_0

    .line 1346
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 1348
    :cond_0
    iget v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v12

    if-lez v5, :cond_3

    .line 1351
    :goto_2
    return v6

    .restart local v0    # "durationSinceAnimation":J
    .restart local v3    # "t0":F
    .restart local v4    # "t1":F
    :cond_1
    move v5, v7

    .line 1340
    goto :goto_0

    .line 1342
    .end local v0    # "durationSinceAnimation":J
    .end local v3    # "t0":F
    .end local v4    # "t1":F
    :cond_2
    iget v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v5, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    goto :goto_1

    :cond_3
    move v6, v7

    .line 1351
    goto :goto_2
.end method

.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 1313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    .line 1314
    return-void
.end method

.method public getCurrX()F
    .locals 1

    .prologue
    .line 1429
    iget v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    return v0
.end method

.method public getFinalX()F
    .locals 1

    .prologue
    .line 1433
    iget v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    .prologue
    .line 1468
    iget v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1469
    return-void
.end method

.method public setFinalX(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 1450
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 1451
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    iget v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    if-eq v0, v1, :cond_1

    .line 1452
    iget v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    if-lez v0, :cond_0

    .line 1454
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->animateToFinal()V

    .line 1456
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    .line 1458
    :cond_1
    return-void
.end method

.method public syncWithScroll()V
    .locals 2

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->wallpaperOffsetForCurrentScroll()F

    move-result v0

    .line 1424
    .local v0, "offset":F
    iget-object v1, p0, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher4/Workspace;

    iget-object v1, v1, Lcom/android/launcher4/Workspace;->mWallpaperOffset:Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 1425
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    .line 1426
    return-void
.end method
