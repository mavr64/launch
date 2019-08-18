.class Lcom/android/launcher4/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$1;->this$0:Lcom/android/launcher4/Launcher;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->buildPageHardwareLayers()V

    .line 469
    :cond_0
    return-void
.end method
