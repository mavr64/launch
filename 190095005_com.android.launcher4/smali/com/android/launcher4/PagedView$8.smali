.class Lcom/android/launcher4/PagedView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/PagedView;->onDropToDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/PagedView;

.field private final synthetic val$onAnimationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedView$8;->this$0:Lcom/android/launcher4/PagedView;

    iput-object p2, p0, Lcom/android/launcher4/PagedView$8;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2988
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/android/launcher4/PagedView$8;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2991
    return-void
.end method
