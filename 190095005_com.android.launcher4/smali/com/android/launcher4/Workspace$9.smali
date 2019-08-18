.class Lcom/android/launcher4/Workspace$9;
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

.field private final synthetic val$addResizeFrame:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$9;->this$0:Lcom/android/launcher4/Workspace;

    iput-object p2, p0, Lcom/android/launcher4/Workspace$9;->val$addResizeFrame:Ljava/lang/Runnable;

    .line 3381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/android/launcher4/Workspace$9;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3384
    iget-object v0, p0, Lcom/android/launcher4/Workspace$9;->val$addResizeFrame:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3388
    :goto_0
    return-void

    .line 3386
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace$9;->this$0:Lcom/android/launcher4/Workspace;

    iget-object v1, p0, Lcom/android/launcher4/Workspace$9;->val$addResizeFrame:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/launcher4/Workspace;->access$17(Lcom/android/launcher4/Workspace;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
