.class Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->animateToAcceptState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

.field private final synthetic val$previewSize:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    iput p2, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 224
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 225
    .local v0, "percent":F
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    iget v3, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    .line 226
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    iget v3, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    .line 227
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-static {v1}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->access$0(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)Lcom/android/launcher4/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-static {v1}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->access$0(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)Lcom/android/launcher4/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/CellLayout;->invalidate()V

    .line 230
    :cond_0
    return-void
.end method
