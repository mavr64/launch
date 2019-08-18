.class Lcom/android/launcher4/Launcher$75;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$75;->this$0:Lcom/android/launcher4/Launcher;

    .line 5189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/Launcher$75;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 6

    .prologue
    .line 5193
    iget-boolean v1, p0, Lcom/android/launcher4/Launcher$75;->mStarted:Z

    if-eqz v1, :cond_0

    .line 5212
    :goto_0
    return-void

    .line 5195
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher4/Launcher$75;->mStarted:Z

    .line 5201
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher4/Launcher$75;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v2}, Lcom/android/launcher4/Launcher;->access$100(Lcom/android/launcher4/Launcher;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher4/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5202
    move-object v0, p0

    .line 5203
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnDrawListener;
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v1

    new-instance v2, Lcom/android/launcher4/Launcher$75$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher4/Launcher$75$1;-><init>(Lcom/android/launcher4/Launcher$75;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
