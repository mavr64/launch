.class Lcom/android/launcher4/LauncherModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel$LoaderTask;->loadAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

.field private final synthetic val$added:Ljava/util/ArrayList;

.field private final synthetic val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$12;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$12;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$12;->val$added:Ljava/util/ArrayList;

    .line 2813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2815
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2816
    .local v0, "bindTime":J
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$12;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$12;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    invoke-virtual {v3, v4}, Lcom/android/launcher4/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher4/LauncherModel$Callbacks;)Lcom/android/launcher4/LauncherModel$Callbacks;

    move-result-object v2

    .line 2817
    .local v2, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-eqz v2, :cond_0

    .line 2818
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$12;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/launcher4/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 2827
    :goto_0
    return-void

    .line 2825
    :cond_0
    const-string v3, "Launcher.Model"

    const-string v4, "not binding apps: no Launcher activity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
