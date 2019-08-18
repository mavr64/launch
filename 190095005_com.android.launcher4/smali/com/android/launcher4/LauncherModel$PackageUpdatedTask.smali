.class Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "op"    # I
    .param p3, "packages"    # [Ljava/lang/String;

    .prologue
    .line 2862
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2863
    iput p2, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 2864
    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 2865
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher4/LauncherModel;
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 2868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$12(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 2870
    .local v13, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2871
    .local v19, "packages":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v8, v0

    .line 2872
    .local v8, "N":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v2, :pswitch_data_0

    .line 2901
    :cond_0
    const/4 v10, 0x0

    .line 2902
    .local v10, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    const/16 v17, 0x0

    .line 2903
    .local v17, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2905
    .local v6, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2906
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2907
    .restart local v10    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2909
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2910
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2911
    .restart local v17    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2913
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher4/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2918
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/LauncherModel$Callbacks;

    move-object v4, v2

    .line 2920
    .local v4, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    :goto_0
    if-nez v4, :cond_5

    .line 2921
    const-string v2, "Launcher.Model"

    .line 2922
    const-string v3, "Nobody to tell about the new app.  Launcher is probably loading."

    .line 2921
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    :goto_1
    return-void

    .line 2874
    .end local v4    # "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    .end local v6    # "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    .end local v10    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    .end local v17    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    :pswitch_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v8, :cond_0

    .line 2877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    aget-object v3, v19, v14

    invoke-virtual {v2, v13, v3}, Lcom/android/launcher4/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 2874
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2881
    .end local v14    # "i":I
    :pswitch_1
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3
    if-ge v14, v8, :cond_0

    .line 2884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    aget-object v3, v19, v14

    invoke-virtual {v2, v13, v3}, Lcom/android/launcher4/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 2886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$12(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getWidgetPreviewCacheDb()Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    move-result-object v2

    aget-object v3, v19, v14

    .line 2885
    invoke-static {v2, v3}, Lcom/android/launcher4/WidgetPreviewLoader;->removePackageFromDb(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V

    .line 2881
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2891
    .end local v14    # "i":I
    :pswitch_2
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    if-ge v14, v8, :cond_0

    .line 2894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    aget-object v3, v19, v14

    invoke-virtual {v2, v3}, Lcom/android/launcher4/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 2896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$12(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getWidgetPreviewCacheDb()Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    move-result-object v2

    aget-object v3, v19, v14

    .line 2895
    invoke-static {v2, v3}, Lcom/android/launcher4/WidgetPreviewLoader;->removePackageFromDb(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V

    .line 2891
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2919
    .end local v14    # "i":I
    .restart local v6    # "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    .restart local v10    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    .restart local v17    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 2926
    .restart local v4    # "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_5
    if-eqz v10, :cond_6

    .line 2928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/LauncherModel$Callbacks;

    move-object v12, v2

    .line 2929
    .local v12, "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :goto_5
    sget-boolean v2, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v2, :cond_e

    .line 2930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v13, v3, v12, v10}, Lcom/android/launcher4/LauncherModel;->addAndBindAddedApps(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 2938
    .end local v12    # "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_6
    :goto_6
    if-eqz v17, :cond_8

    .line 2939
    move-object/from16 v18, v17

    .line 2942
    .local v18, "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v4, v1}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher4/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2966
    .end local v18    # "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2967
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    const/4 v7, 0x1

    .line 2968
    .local v7, "packageRemoved":Z
    :goto_7
    new-instance v5, Ljava/util/ArrayList;

    .line 2969
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2968
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2972
    .local v5, "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_13

    .line 2973
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2981
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v22

    .line 2983
    .local v22, "spKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2982
    move-object/from16 v0, v22

    invoke-virtual {v13, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 2984
    .local v21, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/launcher4/InstallShortcutReceiver;->removeFromInstallQueue(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 2995
    .end local v21    # "sp":Landroid/content/SharedPreferences;
    .end local v22    # "spKey":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;

    move-result-object v24

    new-instance v2, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/launcher4/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3008
    .end local v5    # "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "packageRemoved":Z
    :cond_c
    invoke-static {v13}, Lcom/android/launcher4/LauncherModel;->getSortedWidgetsAndShortcuts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v23

    .line 3009
    .local v23, "widgetsAndShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v4, v1}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher4/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;Lcom/android/launcher4/LauncherModel$Callbacks;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher4/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 2928
    .end local v23    # "widgetsAndShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 2933
    .restart local v12    # "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2935
    .local v11, "addedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v2, v13, v11, v12, v10}, Lcom/android/launcher4/LauncherModel;->addAndBindAddedApps(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    .line 2942
    .end local v11    # "addedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .end local v12    # "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    .restart local v18    # "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/AppInfo;

    .line 2943
    .local v9, "a":Lcom/android/launcher4/AppInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v0, v9, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/android/launcher4/LauncherModel;->access$13(Lcom/android/launcher4/LauncherModel;Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v16

    .line 2944
    .local v16, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher4/ItemInfo;

    .line 2945
    .local v14, "i":Lcom/android/launcher4/ItemInfo;
    invoke-static {v14}, Lcom/android/launcher4/LauncherModel;->isShortcutInfoUpdateable(Lcom/android/launcher4/ItemInfo;)Z

    move-result v24

    if-eqz v24, :cond_10

    move-object v15, v14

    .line 2946
    check-cast v15, Lcom/android/launcher4/ShortcutInfo;

    .line 2947
    .local v15, "info":Lcom/android/launcher4/ShortcutInfo;
    iget-object v0, v9, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2948
    invoke-static {v13, v15}, Lcom/android/launcher4/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    goto :goto_8

    .line 2967
    .end local v9    # "a":Lcom/android/launcher4/AppInfo;
    .end local v14    # "i":Lcom/android/launcher4/ItemInfo;
    .end local v15    # "info":Lcom/android/launcher4/ShortcutInfo;
    .end local v16    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .end local v18    # "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 2973
    .restart local v5    # "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "packageRemoved":Z
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2974
    .local v20, "pn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/launcher4/LauncherModel;->access$23(Lcom/android/launcher4/LauncherModel;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 2975
    .restart local v16    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher4/ItemInfo;

    .line 2976
    .restart local v14    # "i":Lcom/android/launcher4/ItemInfo;
    invoke-static {v13, v14}, Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    goto :goto_9

    .line 2987
    .end local v14    # "i":Lcom/android/launcher4/ItemInfo;
    .end local v16    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .end local v20    # "pn":Ljava/lang/String;
    :cond_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/AppInfo;

    .line 2988
    .restart local v9    # "a":Lcom/android/launcher4/AppInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v0, v9, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/android/launcher4/LauncherModel;->access$13(Lcom/android/launcher4/LauncherModel;Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v16

    .line 2989
    .restart local v16    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher4/ItemInfo;

    .line 2990
    .restart local v14    # "i":Lcom/android/launcher4/ItemInfo;
    invoke-static {v13, v14}, Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    goto :goto_a

    .line 2872
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
