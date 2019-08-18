.class Lcom/android/launcher4/DragLayer$4;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher4/DragLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DragLayer$4;->this$0:Lcom/android/launcher4/DragLayer;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 817
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 819
    .local v1, "percent":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    .line 820
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/launcher4/DragLayer$4;->this$0:Lcom/android/launcher4/DragLayer;

    invoke-static {v2}, Lcom/android/launcher4/DragLayer;->access$0(Lcom/android/launcher4/DragLayer;)Lcom/android/launcher4/DragView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher4/DragView;->setAlpha(F)V

    .line 821
    return-void
.end method
