.class Lcom/android/launcher4/PagedView$6;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mOffset:F

.field private mStartTime:J

.field final synthetic this$0:Lcom/android/launcher4/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedView;J)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedView$6;->this$0:Lcom/android/launcher4/PagedView;

    .line 2895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2896
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/PagedView$6;->mCount:I

    .line 2900
    iput-wide p2, p0, Lcom/android/launcher4/PagedView$6;->mStartTime:J

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 2905
    iget v0, p0, Lcom/android/launcher4/PagedView$6;->mCount:I

    if-gez v0, :cond_1

    .line 2906
    iget v0, p0, Lcom/android/launcher4/PagedView$6;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher4/PagedView$6;->mCount:I

    .line 2915
    :cond_0
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher4/PagedView$6;->mOffset:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 2907
    :cond_1
    iget v0, p0, Lcom/android/launcher4/PagedView$6;->mCount:I

    if-nez v0, :cond_0

    .line 2909
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2911
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher4/PagedView$6;->mStartTime:J

    .line 2910
    sub-long/2addr v2, v4

    long-to-float v1, v2

    .line 2912
    iget-object v2, p0, Lcom/android/launcher4/PagedView$6;->this$0:Lcom/android/launcher4/PagedView;

    invoke-static {v2}, Lcom/android/launcher4/PagedView;->access$6(Lcom/android/launcher4/PagedView;)I

    move-result v2

    int-to-float v2, v2

    .line 2910
    div-float/2addr v1, v2

    .line 2908
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher4/PagedView$6;->mOffset:F

    .line 2913
    iget v0, p0, Lcom/android/launcher4/PagedView$6;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher4/PagedView$6;->mCount:I

    goto :goto_0
.end method
