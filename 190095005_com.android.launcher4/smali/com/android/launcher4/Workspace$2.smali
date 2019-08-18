.class Lcom/android/launcher4/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->onDragStart(Lcom/android/launcher4/DragSource;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$2;->this$0:Lcom/android/launcher4/Workspace;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/launcher4/Workspace$2;->this$0:Lcom/android/launcher4/Workspace;

    iget-boolean v0, v0, Lcom/android/launcher4/Workspace;->mIsDragOccuring:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/launcher4/Workspace$2;->this$0:Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->addExtraEmptyScreenOnDrag()V

    .line 409
    :cond_0
    return-void
.end method
