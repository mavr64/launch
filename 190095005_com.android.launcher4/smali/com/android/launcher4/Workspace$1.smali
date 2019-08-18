.class Lcom/android/launcher4/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Workspace;
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
    iput-object p1, p0, Lcom/android/launcher4/Workspace$1;->this$0:Lcom/android/launcher4/Workspace;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/android/launcher4/Launcher;->getModel()Lcom/android/launcher4/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherModel;->bindRemainingSynchronousPages()V

    .line 290
    return-void
.end method
