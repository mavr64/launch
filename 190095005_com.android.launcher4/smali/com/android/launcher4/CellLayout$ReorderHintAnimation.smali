.class Lcom/android/launcher4/CellLayout$ReorderHintAnimation;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderHintAnimation"
.end annotation


# static fields
.field private static final DURATION:I = 0x12c


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field final synthetic this$0:Lcom/android/launcher4/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/CellLayout;Landroid/view/View;IIIIII)V
    .locals 16
    .param p2, "child"    # Landroid/view/View;
    .param p3, "cellX0"    # I
    .param p4, "cellY0"    # I
    .param p5, "cellX1"    # I
    .param p6, "cellY1"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 2277
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher4/CellLayout;

    .line 2276
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2278
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$3(Lcom/android/launcher4/CellLayout;)[I

    move-result-object v7

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2279
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$3(Lcom/android/launcher4/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v12, v2, v3

    .line 2280
    .local v12, "x0":I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$3(Lcom/android/launcher4/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v14, v2, v3

    .line 2281
    .local v14, "y0":I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$3(Lcom/android/launcher4/CellLayout;)[I

    move-result-object v7

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2282
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$3(Lcom/android/launcher4/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v13, v2, v3

    .line 2283
    .local v13, "x1":I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$3(Lcom/android/launcher4/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v15, v2, v3

    .line 2284
    .local v15, "y1":I
    sub-int v10, v13, v12

    .line 2285
    .local v10, "dX":I
    sub-int v11, v15, v14

    .line 2286
    .local v11, "dY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    .line 2287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    .line 2288
    if-ne v10, v11, :cond_0

    if-eqz v10, :cond_1

    .line 2290
    :cond_0
    if-nez v11, :cond_2

    .line 2291
    int-to-float v2, v10

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$4(Lcom/android/launcher4/CellLayout;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    .line 2302
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->initDeltaX:F

    .line 2303
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->initDeltaY:F

    .line 2304
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->getChildrenScale()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalScale:F

    .line 2305
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->initScale:F

    .line 2306
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    .line 2307
    return-void

    .line 2292
    :cond_2
    if-nez v10, :cond_3

    .line 2293
    int-to-float v2, v11

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$4(Lcom/android/launcher4/CellLayout;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    goto :goto_0

    .line 2295
    :cond_3
    int-to-float v2, v11

    int-to-float v3, v10

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 2296
    .local v8, "angle":D
    int-to-float v2, v10

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    .line 2297
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$4(Lcom/android/launcher4/CellLayout;)F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    .line 2296
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    .line 2298
    int-to-float v2, v11

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    .line 2299
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->access$4(Lcom/android/launcher4/CellLayout;)F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    .line 2298
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/android/launcher4/CellLayout$ReorderHintAnimation;)V
    .locals 0

    .prologue
    .line 2359
    invoke-direct {p0}, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->completeAnimationImmediately()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher4/CellLayout$ReorderHintAnimation;)Lcom/android/launcher4/CellLayout;
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher4/CellLayout;

    return-object v0
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2357
    :cond_0
    return-void
.end method

.method private completeAnimationImmediately()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2360
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 2361
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 2364
    :cond_0
    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 2365
    .local v0, "s":Landroid/animation/AnimatorSet;
    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    .line 2366
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2367
    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher4/CellLayout;->getChildrenScale()F

    move-result v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2368
    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher4/CellLayout;->getChildrenScale()F

    move-result v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    .line 2369
    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    const-string v4, "translationX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 2370
    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2366
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2372
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2373
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2374
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2375
    return-void
.end method


# virtual methods
.method animate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2310
    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-static {v2}, Lcom/android/launcher4/CellLayout;->access$5(Lcom/android/launcher4/CellLayout;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2311
    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-static {v2}, Lcom/android/launcher4/CellLayout;->access$5(Lcom/android/launcher4/CellLayout;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;

    .line 2312
    .local v0, "oldAnimation":Lcom/android/launcher4/CellLayout$ReorderHintAnimation;
    invoke-direct {v0}, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->cancel()V

    .line 2313
    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-static {v2}, Lcom/android/launcher4/CellLayout;->access$5(Lcom/android/launcher4/CellLayout;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    iget v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 2315
    invoke-direct {p0}, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->completeAnimationImmediately()V

    .line 2351
    .end local v0    # "oldAnimation":Lcom/android/launcher4/CellLayout$ReorderHintAnimation;
    :cond_0
    :goto_0
    return-void

    .line 2319
    :cond_1
    iget v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 2322
    :cond_2
    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2323
    .local v1, "va":Landroid/animation/ValueAnimator;
    iput-object v1, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    .line 2324
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2325
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2326
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2327
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2328
    new-instance v2, Lcom/android/launcher4/CellLayout$ReorderHintAnimation$1;

    invoke-direct {v2, p0}, Lcom/android/launcher4/CellLayout$ReorderHintAnimation$1;-><init>(Lcom/android/launcher4/CellLayout$ReorderHintAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2341
    new-instance v2, Lcom/android/launcher4/CellLayout$ReorderHintAnimation$2;

    invoke-direct {v2, p0}, Lcom/android/launcher4/CellLayout$ReorderHintAnimation$2;-><init>(Lcom/android/launcher4/CellLayout$ReorderHintAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2349
    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-static {v2}, Lcom/android/launcher4/CellLayout;->access$5(Lcom/android/launcher4/CellLayout;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2322
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
