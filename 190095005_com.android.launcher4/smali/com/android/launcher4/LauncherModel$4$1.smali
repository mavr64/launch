.class Lcom/android/launcher4/LauncherModel$4$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherModel$4;

.field private final synthetic val$addedShortcutsFinal:Ljava/util/ArrayList;

.field private final synthetic val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

.field private final synthetic val$allAppsApps:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$4;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$4$1;->this$1:Lcom/android/launcher4/LauncherModel$4;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$allAppsApps:Ljava/util/ArrayList;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 496
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$4$1;->this$1:Lcom/android/launcher4/LauncherModel$4;

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel$4;->access$0(Lcom/android/launcher4/LauncherModel$4;)Lcom/android/launcher4/LauncherModel;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$4$1;->this$1:Lcom/android/launcher4/LauncherModel$4;

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel$4;->access$0(Lcom/android/launcher4/LauncherModel$4;)Lcom/android/launcher4/LauncherModel;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    .line 497
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/LauncherModel$Callbacks;

    move-object v2, v5

    .line 498
    .local v2, "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :goto_0
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    if-ne v5, v2, :cond_1

    if-eqz v2, :cond_1

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v0, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v1, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 502
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    .line 503
    iget-object v8, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/ItemInfo;

    .line 504
    .local v4, "info":Lcom/android/launcher4/ItemInfo;
    iget-wide v6, v4, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 505
    .local v6, "lastScreenId":J
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 513
    .end local v4    # "info":Lcom/android/launcher4/ItemInfo;
    .end local v6    # "lastScreenId":J
    :cond_0
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 514
    iget-object v8, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    .line 516
    iget-object v9, p0, Lcom/android/launcher4/LauncherModel$4$1;->val$allAppsApps:Ljava/util/ArrayList;

    .line 513
    invoke-interface {v5, v8, v1, v0, v9}, Lcom/android/launcher4/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 518
    .end local v0    # "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .end local v1    # "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    :cond_1
    return-void

    .line 497
    .end local v2    # "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 505
    .restart local v0    # "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .restart local v1    # "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .restart local v2    # "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    .restart local v4    # "info":Lcom/android/launcher4/ItemInfo;
    .restart local v6    # "lastScreenId":J
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/ItemInfo;

    .line 506
    .local v3, "i":Lcom/android/launcher4/ItemInfo;
    iget-wide v8, v3, Lcom/android/launcher4/ItemInfo;->screenId:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_4

    .line 507
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 509
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
