.class public Lcom/android/launcher4/FirstFrameAnimatorHelper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final IDEAL_FRAME_DURATION:I = 0x10

.field private static final MAX_DELAY:I = 0x3e8

.field private static sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private static sGlobalFrameCounter:J

.field private static sVisible:Z


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartTime:J

    .line 48
    iput-object p2, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 49
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 2
    .param p1, "vpa"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartTime:J

    .line 53
    iput-object p2, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 55
    return-void
.end method

.method static synthetic access$0()J
    .locals 2

    .prologue
    .line 44
    sget-wide v0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    return-wide v0
.end method

.method static synthetic access$1(J)V
    .locals 0

    .prologue
    .line 44
    sput-wide p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    return-void
.end method

.method public static initializeDrawListener(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 69
    sget-object v0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 72
    :cond_0
    new-instance v0, Lcom/android/launcher4/FirstFrameAnimatorHelper$1;

    invoke-direct {v0}, Lcom/android/launcher4/FirstFrameAnimatorHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sVisible:Z

    .line 85
    return-void
.end method

.method public static setIsVisible(Z)V
    .locals 0
    .param p0, "visible"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sVisible:Z

    .line 66
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 60
    .local v0, "va":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/launcher4/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 62
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 90
    sget-wide v4, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartFrame:J

    .line 91
    iput-wide v0, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartTime:J

    .line 94
    :cond_0
    iget-boolean v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v4, :cond_2

    .line 95
    sget-boolean v4, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sVisible:Z

    if-eqz v4, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 100
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 101
    sget-wide v4, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v6, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long v2, v4, v6

    .line 105
    .local v2, "frameNum":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 108
    iget-object v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 109
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 129
    :cond_1
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 133
    .end local v2    # "frameNum":J
    :cond_2
    return-void

    .line 114
    .restart local v2    # "frameNum":J
    :cond_3
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    iget-wide v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 115
    iget-boolean v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v4, :cond_4

    .line 116
    iget-wide v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    .line 117
    const-wide/16 v4, 0x10

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 118
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    goto :goto_0

    .line 120
    :cond_4
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v5, Lcom/android/launcher4/FirstFrameAnimatorHelper$2;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher4/FirstFrameAnimatorHelper$2;-><init>(Lcom/android/launcher4/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public print(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 137
    .local v0, "flatFraction":F
    const-string v1, "FirstFrameAnimatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/launcher4/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v6, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dirty? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isDirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method
