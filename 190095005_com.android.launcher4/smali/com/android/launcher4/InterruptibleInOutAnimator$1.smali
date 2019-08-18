.class Lcom/android/launcher4/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InterruptibleInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher4/InterruptibleInOutAnimator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher4/InterruptibleInOutAnimator;

    .line 54
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher4/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher4/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher4/InterruptibleInOutAnimator;->access$0(Lcom/android/launcher4/InterruptibleInOutAnimator;I)V

    .line 58
    return-void
.end method
