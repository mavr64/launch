.class Lcom/android/launcher4/Launcher$81;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher4/FolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$cl:Lcom/android/launcher4/CellLayout;

.field private final synthetic val$fi:Lcom/android/launcher4/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/FolderIcon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$81;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$81;->val$cl:Lcom/android/launcher4/CellLayout;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$81;->val$fi:Lcom/android/launcher4/FolderIcon;

    .line 6963
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 6966
    iget-object v0, p0, Lcom/android/launcher4/Launcher$81;->val$cl:Lcom/android/launcher4/CellLayout;

    if-eqz v0, :cond_0

    .line 6967
    iget-object v0, p0, Lcom/android/launcher4/Launcher$81;->val$cl:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->clearFolderLeaveBehind()V

    .line 6970
    iget-object v0, p0, Lcom/android/launcher4/Launcher$81;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$56(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/Launcher$81;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$104(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragLayer;->removeView(Landroid/view/View;)V

    .line 6971
    iget-object v0, p0, Lcom/android/launcher4/Launcher$81;->val$fi:Lcom/android/launcher4/FolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/FolderIcon;->setVisibility(I)V

    .line 6973
    :cond_0
    return-void
.end method
