.class Lcom/android/launcher4/Launcher$87;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$fromView:Landroid/view/View;

.field private final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$87;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$87;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$87;->val$toView:Landroid/view/View;

    .line 7523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 7526
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v0, v2, v1

    .line 7527
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/launcher4/Launcher$87;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Launcher$87;->val$fromView:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/android/launcher4/Launcher;->access$108(Lcom/android/launcher4/Launcher;Landroid/view/View;F)V

    .line 7528
    iget-object v1, p0, Lcom/android/launcher4/Launcher$87;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Launcher$87;->val$toView:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/android/launcher4/Launcher;->access$108(Lcom/android/launcher4/Launcher;Landroid/view/View;F)V

    .line 7529
    return-void
.end method
