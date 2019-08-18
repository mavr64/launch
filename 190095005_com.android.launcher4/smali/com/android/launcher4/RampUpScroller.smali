.class Lcom/android/launcher4/RampUpScroller;
.super Ljava/lang/Object;
.source "RampUpScroller.java"


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mRampUpTime:J

.field private mStartTime:J

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "rampUpTime"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/RampUpScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 45
    iput-wide p1, p0, Lcom/android/launcher4/RampUpScroller;->mRampUpTime:J

    .line 46
    return-void
.end method


# virtual methods
.method public computeScrollDelta()V
    .locals 12

    .prologue
    .line 64
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 65
    .local v0, "currentTime":J
    iget-wide v8, p0, Lcom/android/launcher4/RampUpScroller;->mStartTime:J

    sub-long v4, v0, v8

    .line 67
    .local v4, "elapsedSinceStart":J
    iget-wide v8, p0, Lcom/android/launcher4/RampUpScroller;->mRampUpTime:J

    cmp-long v7, v4, v8

    if-gez v7, :cond_0

    .line 68
    iget-object v7, p0, Lcom/android/launcher4/RampUpScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v8, v4

    iget-wide v10, p0, Lcom/android/launcher4/RampUpScroller;->mRampUpTime:J

    long-to-float v9, v10

    div-float/2addr v8, v9

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 73
    .local v6, "scale":F
    :goto_0
    iget-wide v8, p0, Lcom/android/launcher4/RampUpScroller;->mDeltaTime:J

    sub-long v2, v0, v8

    .line 74
    .local v2, "elapsedSinceDelta":J
    iput-wide v0, p0, Lcom/android/launcher4/RampUpScroller;->mDeltaTime:J

    .line 76
    long-to-float v7, v2

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/android/launcher4/RampUpScroller;->mTargetVelocityX:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/launcher4/RampUpScroller;->mDeltaX:I

    .line 77
    long-to-float v7, v2

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/android/launcher4/RampUpScroller;->mTargetVelocityY:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/launcher4/RampUpScroller;->mDeltaY:I

    .line 78
    return-void

    .line 70
    .end local v2    # "elapsedSinceDelta":J
    .end local v6    # "scale":F
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "scale":F
    goto :goto_0
.end method

.method public getDeltaX()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/launcher4/RampUpScroller;->mDeltaX:I

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/launcher4/RampUpScroller;->mDeltaY:I

    return v0
.end method

.method public getTargetVelocityX()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/launcher4/RampUpScroller;->mTargetVelocityX:F

    return v0
.end method

.method public getTargetVelocityY()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/launcher4/RampUpScroller;->mTargetVelocityY:F

    return v0
.end method

.method public setTargetVelocity(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 87
    iput p1, p0, Lcom/android/launcher4/RampUpScroller;->mTargetVelocityX:F

    .line 88
    iput p2, p0, Lcom/android/launcher4/RampUpScroller;->mTargetVelocityY:F

    .line 89
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher4/RampUpScroller;->mStartTime:J

    .line 53
    iget-wide v0, p0, Lcom/android/launcher4/RampUpScroller;->mStartTime:J

    iput-wide v0, p0, Lcom/android/launcher4/RampUpScroller;->mDeltaTime:J

    .line 54
    return-void
.end method
