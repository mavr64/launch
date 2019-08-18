.class Lcom/android/launcher4/Launcher$106;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$106;->this$0:Lcom/android/launcher4/Launcher;

    .line 9232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 9234
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->enterOverviewMode()Z

    .line 9235
    return-void
.end method
