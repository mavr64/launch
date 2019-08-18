.class Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;

.field private final synthetic val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

.field private final synthetic val$packageRemoved:Z

.field private final synthetic val$removedApps:Ljava/util/ArrayList;

.field private final synthetic val$removedPackageNames:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$removedPackageNames:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$removedApps:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$packageRemoved:Z

    .line 2995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2997
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;

    invoke-static {v1}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->access$0(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher4/LauncherModel;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;

    invoke-static {v1}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->access$0(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher4/LauncherModel;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/LauncherModel$Callbacks;

    move-object v0, v1

    .line 2999
    .local v0, "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 3000
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 3001
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$removedPackageNames:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$removedApps:Ljava/util/ArrayList;

    .line 3002
    iget-boolean v4, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;->val$packageRemoved:Z

    .line 3000
    invoke-interface {v1, v2, v3, v4}, Lcom/android/launcher4/LauncherModel$Callbacks;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 3004
    :cond_0
    return-void

    .line 2998
    .end local v0    # "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
