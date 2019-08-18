.class Lcom/android/launcher4/Workspace$10;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;

.field private final synthetic val$finalResizeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$10;->this$0:Lcom/android/launcher4/Workspace;

    iput-object p2, p0, Lcom/android/launcher4/Workspace$10;->val$finalResizeRunnable:Ljava/lang/Runnable;

    .line 3413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3416
    iget-object v0, p0, Lcom/android/launcher4/Workspace$10;->this$0:Lcom/android/launcher4/Workspace;

    iput-boolean v1, v0, Lcom/android/launcher4/Workspace;->mAnimatingViewIntoPlace:Z

    .line 3417
    iget-object v0, p0, Lcom/android/launcher4/Workspace$10;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0, v1}, Lcom/android/launcher4/Workspace;->access$18(Lcom/android/launcher4/Workspace;Z)V

    .line 3418
    iget-object v0, p0, Lcom/android/launcher4/Workspace$10;->val$finalResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/android/launcher4/Workspace$10;->val$finalResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3421
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace$10;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->stripEmptyScreens()V

    .line 3422
    return-void
.end method
