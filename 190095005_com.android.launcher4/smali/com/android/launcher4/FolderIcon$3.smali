.class Lcom/android/launcher4/FolderIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/FolderIcon;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher4/FolderIcon;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/FolderIcon$3;->this$0:Lcom/android/launcher4/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher4/FolderIcon$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 611
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$3;->this$0:Lcom/android/launcher4/FolderIcon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher4/FolderIcon;->mAnimating:Z

    .line 619
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 622
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$3;->this$0:Lcom/android/launcher4/FolderIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher4/FolderIcon;->mAnimating:Z

    .line 615
    return-void
.end method
