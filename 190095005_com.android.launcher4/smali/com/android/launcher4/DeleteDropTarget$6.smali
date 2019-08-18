.class Lcom/android/launcher4/DeleteDropTarget$6;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DeleteDropTarget;->onFlingToDelete(Lcom/android/launcher4/DropTarget$DragObject;IILandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mOffset:F

.field final synthetic this$0:Lcom/android/launcher4/DeleteDropTarget;

.field private final synthetic val$duration:I

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/launcher4/DeleteDropTarget;JI)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DeleteDropTarget$6;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iput-wide p2, p0, Lcom/android/launcher4/DeleteDropTarget$6;->val$startTime:J

    iput p4, p0, Lcom/android/launcher4/DeleteDropTarget$6;->val$duration:I

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mCount:I

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mOffset:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 542
    iget v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mCount:I

    if-gez v0, :cond_1

    .line 543
    iget v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mCount:I

    .line 549
    :cond_0
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mOffset:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 544
    :cond_1
    iget v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mCount:I

    if-nez v0, :cond_0

    .line 545
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 546
    iget-wide v4, p0, Lcom/android/launcher4/DeleteDropTarget$6;->val$startTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/android/launcher4/DeleteDropTarget$6;->val$duration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 545
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mOffset:F

    .line 547
    iget v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher4/DeleteDropTarget$6;->mCount:I

    goto :goto_0
.end method
