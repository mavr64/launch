.class Lcom/android/launcher4/LauncherModel$LoaderTask$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel$LoaderTask;->onlyBindAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

.field private final synthetic val$list:Ljava/util/ArrayList;

.field private final synthetic val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$11;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$11;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$11;->val$list:Ljava/util/ArrayList;

    .line 2732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2734
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2735
    .local v2, "t":J
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$11;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$11;->val$oldCallbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    invoke-virtual {v1, v4}, Lcom/android/launcher4/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher4/LauncherModel$Callbacks;)Lcom/android/launcher4/LauncherModel$Callbacks;

    move-result-object v0

    .line 2736
    .local v0, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 2737
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$11;->val$list:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher4/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 2746
    :cond_0
    return-void
.end method
