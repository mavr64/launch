.class Lcom/android/launcher4/LauncherModel$LoaderTask$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel$LoaderTask;->bindWorkspace(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

.field private final synthetic val$isUpgradePath:Z

.field private final synthetic val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

.field private final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;ZJ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$10;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$10;->val$isUpgradePath:Z

    iput-wide p4, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$10;->val$t:J

    .line 2674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2676
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$10;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher4/LauncherModel$Callbacks;)Lcom/android/launcher4/LauncherModel$Callbacks;

    move-result-object v0

    .line 2677
    .local v0, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 2678
    iget-boolean v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$10;->val$isUpgradePath:Z

    invoke-interface {v0, v1}, Lcom/android/launcher4/LauncherModel$Callbacks;->finishBindingItems(Z)V

    .line 2690
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$10;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher4/LauncherModel$LoaderTask;->access$1(Lcom/android/launcher4/LauncherModel$LoaderTask;Z)V

    .line 2691
    return-void
.end method
