.class Lcom/android/launcher4/LauncherModel$LoaderTask;
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
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mIsLoadingAndBindingWorkspace:Z

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLaunching"    # Z

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1515
    iput-boolean p3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 1516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    .line 1517
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/LauncherModel$LoaderTask;Z)V
    .locals 0

    .prologue
    .line 1509
    iput-boolean p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher4/LauncherModel$LoaderTask;Z)V
    .locals 0

    .prologue
    .line 1507
    iput-boolean p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return-void
.end method

.method private bindWorkspace(IZ)V
    .locals 26
    .param p1, "synchronizeBindPage"    # I
    .param p2, "isUpgradePath"    # Z

    .prologue
    .line 2584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 2589
    .local v20, "t":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 2590
    .local v9, "oldCallbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-nez v9, :cond_0

    .line 2593
    const-string v2, "Launcher.Model"

    const-string v8, "LoaderTask running with no launcher"

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :goto_0
    return-void

    .line 2597
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, p1

    if-le v0, v2, :cond_2

    const/16 v23, 0x1

    .line 2598
    .local v23, "isLoadingSynchronously":Z
    :goto_1
    if-eqz v23, :cond_3

    move/from16 v3, p1

    .line 2605
    .local v3, "currentScreen":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 2606
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2607
    .local v25, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2608
    .local v22, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2609
    .local v5, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2610
    .local v4, "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/ItemInfo;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2611
    .local v24, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v8, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2612
    :try_start_0
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2613
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2614
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2615
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2616
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2611
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2619
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2620
    .local v10, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2621
    .local v14, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2622
    .local v11, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2623
    .local v15, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2624
    .local v6, "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2628
    .local v7, "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v10, v14}, Lcom/android/launcher4/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2630
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1, v11, v15}, Lcom/android/launcher4/LauncherModel$LoaderTask;->filterCurrentAppWidgets(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v2, p0

    .line 2632
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher4/LauncherModel$LoaderTask;->filterCurrentFolders(ILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 2634
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher4/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 2635
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher4/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 2638
    new-instance v16, Lcom/android/launcher4/LauncherModel$LoaderTask$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/launcher4/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;)V

    .line 2646
    .local v16, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-static {v2, v0, v8}, Lcom/android/launcher4/LauncherModel;->access$19(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;I)V

    .line 2648
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/android/launcher4/LauncherModel$LoaderTask;->bindWorkspaceScreens(Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 2652
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v12, v6

    .line 2651
    invoke-direct/range {v8 .. v13}, Lcom/android/launcher4/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 2653
    if-eqz v23, :cond_1

    .line 2654
    new-instance v16, Lcom/android/launcher4/LauncherModel$LoaderTask$9;

    .end local v16    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v3}, Lcom/android/launcher4/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;I)V

    .line 2662
    .restart local v16    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-static {v2, v0, v8}, Lcom/android/launcher4/LauncherModel;->access$19(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;I)V

    .line 2668
    :cond_1
    sget-object v2, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2671
    if-eqz v23, :cond_4

    sget-object v17, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    :goto_3
    move-object/from16 v12, p0

    move-object v13, v9

    move-object/from16 v16, v7

    .line 2669
    invoke-direct/range {v12 .. v17}, Lcom/android/launcher4/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 2674
    .end local v16    # "r":Ljava/lang/Runnable;
    new-instance v16, Lcom/android/launcher4/LauncherModel$LoaderTask$10;

    move-object/from16 v17, p0

    move-object/from16 v18, v9

    move/from16 v19, p2

    invoke-direct/range {v16 .. v21}, Lcom/android/launcher4/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;ZJ)V

    .line 2693
    .restart local v16    # "r":Ljava/lang/Runnable;
    if-eqz v23, :cond_5

    .line 2694
    sget-object v2, Lcom/android/launcher4/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2597
    .end local v3    # "currentScreen":I
    .end local v4    # "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/ItemInfo;>;"
    .end local v5    # "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .end local v6    # "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .end local v7    # "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .end local v10    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .end local v11    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .end local v14    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .end local v15    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .end local v16    # "r":Ljava/lang/Runnable;
    .end local v22    # "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .end local v23    # "isLoadingSynchronously":Z
    .end local v24    # "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v25    # "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 2599
    .restart local v23    # "isLoadingSynchronously":Z
    :cond_3
    invoke-interface {v9}, Lcom/android/launcher4/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v3

    goto/16 :goto_2

    .line 2611
    .restart local v3    # "currentScreen":I
    .restart local v4    # "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/ItemInfo;>;"
    .restart local v5    # "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .restart local v22    # "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .restart local v24    # "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v25    # "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2671
    .restart local v6    # "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .restart local v7    # "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .restart local v10    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .restart local v11    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .restart local v14    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .restart local v15    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .restart local v16    # "r":Ljava/lang/Runnable;
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 2696
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-static {v2, v0, v8}, Lcom/android/launcher4/LauncherModel;->access$19(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;I)V

    goto/16 :goto_0
.end method

.method private bindWorkspaceItems(Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "oldCallbacks"    # Lcom/android/launcher4/LauncherModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher4/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2517
    .local p2, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .local p3, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .local p4, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .local p5, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-eqz p5, :cond_1

    const/4 v8, 0x1

    .line 2520
    .local v8, "postOnMainThread":Z
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2521
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v6, :cond_2

    .line 2543
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2544
    new-instance v0, Lcom/android/launcher4/LauncherModel$LoaderTask$6;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/launcher4/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/HashMap;)V

    .line 2552
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_5

    .line 2553
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2560
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2561
    const/4 v7, 0x0

    :goto_3
    if-lt v7, v6, :cond_6

    .line 2577
    return-void

    .line 2517
    .end local v6    # "N":I
    .end local v7    # "i":I
    .end local v8    # "postOnMainThread":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 2522
    .restart local v6    # "N":I
    .restart local v7    # "i":I
    .restart local v8    # "postOnMainThread":Z
    :cond_2
    move v4, v7

    .line 2523
    .local v4, "start":I
    add-int/lit8 v1, v7, 0x6

    if-gt v1, v6, :cond_3

    const/4 v5, 0x6

    .line 2525
    .local v5, "chunkSize":I
    :goto_4
    new-instance v0, Lcom/android/launcher4/LauncherModel$LoaderTask$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    .line 2535
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_4

    .line 2536
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    :goto_5
    add-int/lit8 v7, v7, 0x6

    goto :goto_1

    .line 2524
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v5    # "chunkSize":I
    :cond_3
    sub-int v5, v6, v7

    goto :goto_4

    .line 2538
    .restart local v0    # "r":Ljava/lang/Runnable;
    .restart local v5    # "chunkSize":I
    :cond_4
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher4/LauncherModel;->access$19(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_5

    .line 2555
    .end local v4    # "start":I
    .end local v5    # "chunkSize":I
    :cond_5
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher4/LauncherModel;->access$19(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 2562
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_6
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 2563
    .local v9, "widget":Lcom/android/launcher4/LauncherAppWidgetInfo;
    new-instance v0, Lcom/android/launcher4/LauncherModel$LoaderTask$7;

    invoke-direct {v0, p0, p1, v9}, Lcom/android/launcher4/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Lcom/android/launcher4/LauncherAppWidgetInfo;)V

    .line 2571
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_7

    .line 2572
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2561
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2574
    :cond_7
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher4/LauncherModel;->access$19(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_6
.end method

.method private bindWorkspaceScreens(Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "oldCallbacks"    # Lcom/android/launcher4/LauncherModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher4/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2499
    .local p2, "orderedScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/launcher4/LauncherModel$LoaderTask$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher4/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 2508
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher4/LauncherModel;->access$19(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;I)V

    .line 2509
    return-void
.end method

.method private checkItemDimensions(Lcom/android/launcher4/ItemInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher4/ItemInfo;

    .prologue
    .line 1800
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 1801
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 1802
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v2, p1, Lcom/android/launcher4/ItemInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher4/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v3, v3

    if-gt v2, v3, :cond_0

    .line 1803
    iget v2, p1, Lcom/android/launcher4/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher4/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v3, v3

    .line 1802
    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkItemPlacement(Ljava/util/HashMap;Lcom/android/launcher4/ItemInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 18
    .param p2, "item"    # Lcom/android/launcher4/ItemInfo;
    .param p3, "deleteOnItemOverlap"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[[",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Lcom/android/launcher4/ItemInfo;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1811
    .local p1, "occupied":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;[[Lcom/android/launcher4/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    .line 1812
    .local v2, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v7

    .line 1813
    .local v7, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v12, v7, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v3, v12

    .line 1814
    .local v3, "countX":I
    iget v12, v7, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v6, v12

    .line 1816
    .local v6, "countY":I
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 1817
    .local v4, "containerIndex":J
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    .line 1820
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v12}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1821
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v12}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 1822
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    long-to-int v13, v14

    .line 1821
    invoke-interface {v12, v13}, Lcom/android/launcher4/LauncherModel$Callbacks;->isAllAppsButtonRank(I)Z

    move-result v12

    .line 1822
    if-eqz v12, :cond_1

    .line 1823
    :cond_0
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1824
    const/4 v12, 0x0

    .line 1883
    :goto_0
    return v12

    .line 1828
    :cond_1
    const/16 v12, -0x65

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1830
    const/16 v12, -0x65

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lcom/android/launcher4/ItemInfo;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    long-to-int v13, v14

    .line 1829
    aget-object v12, v12, v13

    .line 1830
    const/4 v13, 0x0

    .line 1829
    aget-object v12, v12, v13

    if-eqz v12, :cond_4

    .line 1831
    const-string v13, "Launcher.Model"

    .line 1832
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Error loading shortcut into hotseat "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1833
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1834
    const-string v14, " into position ("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1835
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1836
    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1837
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1838
    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1839
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1840
    const-string v14, ") occupied by "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1842
    const/16 v12, -0x65

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lcom/android/launcher4/ItemInfo;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    .line 1841
    aget-object v12, v12, v15

    .line 1842
    const/4 v15, 0x0

    .line 1841
    aget-object v12, v12, v15

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1832
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1831
    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1846
    :cond_2
    add-int/lit8 v12, v3, 0x1

    add-int/lit8 v13, v6, 0x1

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const-class v13, Lcom/android/launcher4/ItemInfo;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Lcom/android/launcher4/ItemInfo;

    .line 1847
    .local v8, "items":[[Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    long-to-int v12, v12

    aget-object v12, v8, v12

    const/4 v13, 0x0

    aput-object p2, v12, v13

    .line 1849
    const-wide/16 v12, -0x65

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 1848
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1853
    .end local v8    # "items":[[Lcom/android/launcher4/ItemInfo;
    :cond_3
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v12, v12, v14

    if-eqz v12, :cond_4

    .line 1856
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1859
    :cond_4
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1860
    add-int/lit8 v12, v3, 0x1

    add-int/lit8 v13, v6, 0x1

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const-class v13, Lcom/android/launcher4/ItemInfo;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Lcom/android/launcher4/ItemInfo;

    .line 1861
    .restart local v8    # "items":[[Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    .end local v8    # "items":[[Lcom/android/launcher4/ItemInfo;
    :cond_5
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Lcom/android/launcher4/ItemInfo;

    .line 1866
    .local v9, "screens":[[Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    .local v10, "x":I
    :goto_1
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    add-int/2addr v12, v13

    if-lt v10, v12, :cond_6

    .line 1877
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    :goto_2
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    add-int/2addr v12, v13

    if-lt v10, v12, :cond_9

    .line 1883
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1867
    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    .local v11, "y":I
    :goto_3
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    add-int/2addr v12, v13

    if-lt v11, v12, :cond_7

    .line 1866
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1868
    :cond_7
    aget-object v12, v9, v10

    aget-object v12, v12, v11

    if-eqz v12, :cond_8

    .line 1869
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error loading shortcut "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1870
    const-string v14, " into cell ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1871
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1872
    const-string v14, ") occupied by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v9, v10

    aget-object v14, v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1869
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1867
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1878
    .end local v11    # "y":I
    :cond_9
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    .restart local v11    # "y":I
    :goto_4
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    add-int/2addr v12, v13

    if-lt v11, v12, :cond_a

    .line 1877
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1879
    :cond_a
    aget-object v12, v9, v10

    aput-object p2, v12, v11

    .line 1878
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method private clearSBgDataStructures()V
    .locals 2

    .prologue
    .line 1888
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1889
    :try_start_0
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1890
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1891
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1892
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1893
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1894
    sget-object v0, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1888
    monitor-exit v1

    .line 1896
    return-void

    .line 1888
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private filterCurrentAppWidgets(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2428
    .local p2, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .local p3, "currentScreenWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    .local p4, "otherScreenWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/LauncherAppWidgetInfo;>;"
    if-gez p1, :cond_0

    .line 2429
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2432
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2442
    return-void

    .line 2432
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 2433
    .local v0, "widget":Lcom/android/launcher4/LauncherAppWidgetInfo;
    if-eqz v0, :cond_1

    .line 2435
    iget-wide v2, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2436
    iget-wide v2, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->screenId:J

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2437
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2439
    :cond_3
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private filterCurrentFolders(ILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2453
    .local p2, "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/ItemInfo;>;"
    .local p3, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .local p4, "currentScreenFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    .local p5, "otherScreenFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher4/FolderInfo;>;"
    if-gez p1, :cond_0

    .line 2454
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2457
    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2469
    return-void

    .line 2457
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2458
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 2459
    .local v1, "info":Lcom/android/launcher4/ItemInfo;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/FolderInfo;

    .line 2460
    .local v0, "folder":Lcom/android/launcher4/FolderInfo;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2462
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 2463
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->screenId:J

    int-to-long v8, p1

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 2464
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2466
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2371
    .local p2, "allWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .local p3, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .local p4, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2372
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2382
    if-gez p1, :cond_1

    .line 2383
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2391
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2392
    .local v2, "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v4, Lcom/android/launcher4/LauncherModel$LoaderTask$2;

    invoke-direct {v4, p0}, Lcom/android/launcher4/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;)V

    invoke-static {p2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2398
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2418
    return-void

    .line 2373
    .end local v2    # "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ItemInfo;

    .line 2374
    .local v0, "i":Lcom/android/launcher4/ItemInfo;
    if-nez v0, :cond_0

    .line 2375
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2398
    .end local v0    # "i":Lcom/android/launcher4/ItemInfo;
    .restart local v2    # "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 2399
    .local v1, "info":Lcom/android/launcher4/ItemInfo;
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 2400
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->screenId:J

    int-to-long v8, p1

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 2401
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2402
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2404
    :cond_4
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2406
    :cond_5
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    .line 2407
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2408
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2410
    :cond_6
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2411
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2414
    :cond_7
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private loadAllApps()V
    .locals 21

    .prologue
    .line 2759
    const-wide/16 v8, 0x0

    .line 2761
    .local v8, "loadTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v13}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 2762
    .local v11, "oldCallbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-nez v11, :cond_1

    .line 2765
    const-string v13, "Launcher.Model"

    const-string v18, "LoaderTask running with no launcher (loadAllApps)"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_0
    :goto_0
    return-void

    .line 2769
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2770
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v10, v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2771
    .local v10, "mainIntent":Landroid/content/Intent;
    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2774
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v13, v13, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    invoke-virtual {v13}, Lcom/android/launcher4/AllAppsList;->clear()V

    .line 2777
    const-wide/16 v14, 0x0

    .line 2779
    .local v14, "qiaTime":J
    const/4 v13, 0x0

    .line 2778
    invoke-virtual {v12, v10, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 2787
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2792
    const-wide/16 v16, 0x0

    .line 2793
    .local v16, "sortTime":J
    new-instance v13, Lcom/android/launcher4/LauncherModel$ShortcutNameComparator;

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v12, v0}, Lcom/android/launcher4/LauncherModel$ShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;)V

    .line 2793
    invoke-static {v6, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2801
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lt v7, v13, :cond_2

    .line 2809
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v13, v13, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    iget-object v4, v13, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    .line 2810
    .local v4, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v13, v13, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/launcher4/AllAppsList;->added:Ljava/util/ArrayList;

    .line 2813
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v13}, Lcom/android/launcher4/LauncherModel;->access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;

    move-result-object v13

    new-instance v18, Lcom/android/launcher4/LauncherModel$LoaderTask$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v4}, Lcom/android/launcher4/LauncherModel$LoaderTask$12;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/launcher4/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2802
    .end local v4    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2804
    .local v5, "app":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v13, v13, Lcom/android/launcher4/LauncherModel;->mBgAllAppsList:Lcom/android/launcher4/AllAppsList;

    new-instance v18, Lcom/android/launcher4/AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher4/LauncherModel;->access$22(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/IconCache;

    move-result-object v19

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v12, v5, v1, v2}, Lcom/android/launcher4/AppInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher4/IconCache;Ljava/util/HashMap;)V

    .line 2804
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/launcher4/AllAppsList;->add(Lcom/android/launcher4/AppInfo;)V

    .line 2801
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private loadAndBindAllApps()V
    .locals 2

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$5(Lcom/android/launcher4/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2706
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->loadAllApps()V

    .line 2707
    monitor-enter p0

    .line 2708
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 2709
    monitor-exit p0

    .line 2716
    :goto_0
    return-void

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher4/LauncherModel;->access$20(Lcom/android/launcher4/LauncherModel;Z)V

    .line 2707
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2714
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1529
    iput-boolean v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, "isUpgradePath":Z
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$1(Lcom/android/launcher4/LauncherModel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1539
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->loadWorkspace()Z

    move-result v0

    .line 1540
    monitor-enter p0

    .line 1541
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_0

    .line 1542
    monitor-exit p0

    move v1, v0

    .line 1550
    .end local v0    # "isUpgradePath":Z
    .local v1, "isUpgradePath":Z
    :goto_0
    return v1

    .line 1544
    .end local v1    # "isUpgradePath":Z
    .restart local v0    # "isUpgradePath":Z
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/launcher4/LauncherModel;->access$2(Lcom/android/launcher4/LauncherModel;Z)V

    .line 1540
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1549
    :cond_1
    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->bindWorkspace(IZ)V

    move v1, v0

    .line 1550
    .end local v0    # "isUpgradePath":Z
    .restart local v1    # "isUpgradePath":Z
    goto :goto_0

    .line 1540
    .end local v1    # "isUpgradePath":Z
    .restart local v0    # "isUpgradePath":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private loadWorkspace()Z
    .locals 80

    .prologue
    .line 1900
    const-wide/16 v70, 0x0

    .line 1902
    .local v70, "t":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1904
    .local v15, "context":Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1905
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    .line 1907
    .local v53, "manager":Landroid/content/pm/PackageManager;
    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v74

    .line 1908
    .local v74, "widgets":Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v53 .. v53}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v46

    .line 1910
    .local v46, "isSafeMode":Z
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v21

    .line 1911
    .local v21, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v38

    .line 1912
    .local v38, "grid":Lcom/android/launcher4/DeviceProfile;
    move-object/from16 v0, v38

    iget v6, v0, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v0, v6

    move/from16 v33, v0

    .line 1913
    .local v33, "countX":I
    move-object/from16 v0, v38

    iget v6, v0, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v0, v6

    move/from16 v34, v0

    .line 1916
    .local v34, "countY":I
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getLauncherProvider()Lcom/android/launcher4/LauncherProvider;

    move-result-object v6

    .line 1917
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher4/LauncherProvider;->loadDefaultFavoritesIfNecessary(I)V

    .line 1920
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getLauncherProvider()Lcom/android/launcher4/LauncherProvider;

    move-result-object v6

    .line 1921
    invoke-virtual {v6}, Lcom/android/launcher4/LauncherProvider;->justLoadedOldDb()Z

    move-result v51

    .line 1923
    .local v51, "loadedOldDb":Z
    sget-object v75, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v75

    .line 1924
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->clearSBgDataStructures()V

    .line 1926
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    .local v50, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 1930
    .local v5, "contentUri":Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1931
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1930
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1937
    .local v10, "c":Landroid/database/Cursor;
    new-instance v59, Ljava/util/HashMap;

    invoke-direct/range {v59 .. v59}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1941
    .local v59, "occupied":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;[[Lcom/android/launcher4/ItemInfo;>;"
    :try_start_1
    const-string v6, "_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 1943
    .local v42, "idIndex":I
    const-string v6, "intent"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 1945
    .local v45, "intentIndex":I
    const-string v6, "title"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1947
    .local v12, "titleIndex":I
    const-string v6, "iconType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1949
    .local v16, "iconTypeIndex":I
    const-string v6, "icon"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1951
    .local v11, "iconIndex":I
    const-string v6, "iconPackage"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1953
    .local v17, "iconPackageIndex":I
    const-string v6, "iconResource"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1955
    .local v18, "iconResourceIndex":I
    const-string v6, "container"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 1957
    .local v32, "containerIndex":I
    const-string v6, "itemType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 1959
    .local v49, "itemTypeIndex":I
    const-string v6, "appWidgetId"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1961
    .local v23, "appWidgetIdIndex":I
    const-string v6, "appWidgetProvider"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 1963
    .local v25, "appWidgetProviderIndex":I
    const-string v6, "screen"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v66

    .line 1965
    .local v66, "screenIndex":I
    const-string v6, "cellX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 1967
    .local v27, "cellXIndex":I
    const-string v6, "cellY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 1969
    .local v28, "cellYIndex":I
    const-string v6, "spanX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v67

    .line 1971
    .local v67, "spanXIndex":I
    const-string v6, "spanY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v68

    .line 1984
    .local v68, "spanYIndex":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v6, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    .line 2250
    :cond_1
    if-eqz v10, :cond_2

    .line 2251
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2256
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v6, :cond_14

    .line 2257
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->clearSBgDataStructures()V

    .line 2258
    monitor-exit v75
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v51, 0x0

    .line 2359
    .end local v51    # "loadedOldDb":Z
    :goto_1
    return v51

    .line 1985
    .restart local v51    # "loadedOldDb":Z
    :cond_3
    :try_start_3
    new-instance v35, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1986
    const/4 v6, 0x0

    .line 1985
    move-object/from16 v0, v35

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1988
    .local v35, "deleteOnItemOverlap":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_4
    move/from16 v0, v49

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 1990
    .local v48, "itemType":I
    packed-switch v48, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1993
    :pswitch_1
    move/from16 v0, v42

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1994
    .local v40, "id":J
    move/from16 v0, v45

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v44

    .line 1997
    .local v44, "intentDescription":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1996
    :try_start_5
    move-object/from16 v0, v44

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 1998
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v30

    .line 1999
    .local v30, "cn":Landroid/content/ComponentName;
    if-eqz v30, :cond_6

    .line 2000
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    invoke-static {v6, v0, v1}, Lcom/android/launcher4/LauncherModel;->access$14(Lcom/android/launcher4/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v6

    .line 2001
    if-nez v6, :cond_6

    .line 2002
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v6}, Lcom/android/launcher4/LauncherModel;->access$15(Lcom/android/launcher4/LauncherModel;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2005
    const-string v6, "Launcher.Model"

    .line 2006
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Invalid package removed: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2006
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2007
    const/4 v9, 0x1

    .line 2005
    invoke-static {v6, v7, v9}, Lcom/android/launcher4/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2008
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2021
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v30    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v36

    .line 2022
    .local v36, "e":Ljava/net/URISyntaxException;
    :try_start_6
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Invalid uri: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2023
    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    .line 2022
    invoke-static {v6, v7, v9}, Lcom/android/launcher4/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2243
    .end local v36    # "e":Ljava/net/URISyntaxException;
    .end local v40    # "id":J
    .end local v44    # "intentDescription":Ljava/lang/String;
    .end local v48    # "itemType":I
    :catch_1
    move-exception v36

    .line 2244
    .local v36, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v6, "Launcher.Model"

    .line 2245
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Desktop items loading interrupted: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2246
    const/4 v9, 0x1

    .line 2244
    invoke-static {v6, v7, v9}, Lcom/android/launcher4/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 2249
    .end local v11    # "iconIndex":I
    .end local v12    # "titleIndex":I
    .end local v16    # "iconTypeIndex":I
    .end local v17    # "iconPackageIndex":I
    .end local v18    # "iconResourceIndex":I
    .end local v23    # "appWidgetIdIndex":I
    .end local v25    # "appWidgetProviderIndex":I
    .end local v27    # "cellXIndex":I
    .end local v28    # "cellYIndex":I
    .end local v32    # "containerIndex":I
    .end local v35    # "deleteOnItemOverlap":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v42    # "idIndex":I
    .end local v45    # "intentIndex":I
    .end local v49    # "itemTypeIndex":I
    .end local v66    # "screenIndex":I
    .end local v67    # "spanXIndex":I
    .end local v68    # "spanYIndex":I
    :catchall_0
    move-exception v6

    .line 2250
    if-eqz v10, :cond_4

    .line 2251
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2253
    :cond_4
    throw v6

    .line 1923
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v50    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v59    # "occupied":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;[[Lcom/android/launcher4/ItemInfo;>;"
    :catchall_1
    move-exception v6

    monitor-exit v75
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 2015
    .restart local v5    # "contentUri":Landroid/net/Uri;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v11    # "iconIndex":I
    .restart local v12    # "titleIndex":I
    .restart local v16    # "iconTypeIndex":I
    .restart local v17    # "iconPackageIndex":I
    .restart local v18    # "iconResourceIndex":I
    .restart local v23    # "appWidgetIdIndex":I
    .restart local v25    # "appWidgetProviderIndex":I
    .restart local v27    # "cellXIndex":I
    .restart local v28    # "cellYIndex":I
    .restart local v30    # "cn":Landroid/content/ComponentName;
    .restart local v32    # "containerIndex":I
    .restart local v35    # "deleteOnItemOverlap":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v40    # "id":J
    .restart local v42    # "idIndex":I
    .restart local v44    # "intentDescription":Ljava/lang/String;
    .restart local v45    # "intentIndex":I
    .restart local v48    # "itemType":I
    .restart local v49    # "itemTypeIndex":I
    .restart local v50    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v59    # "occupied":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;[[Lcom/android/launcher4/ItemInfo;>;"
    .restart local v66    # "screenIndex":I
    .restart local v67    # "spanXIndex":I
    .restart local v68    # "spanYIndex":I
    :cond_5
    :try_start_9
    const-string v6, "Launcher.Model"

    .line 2016
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Invalid package found: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2017
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2016
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2017
    const/4 v9, 0x1

    .line 2015
    invoke-static {v6, v7, v9}, Lcom/android/launcher4/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 2027
    :cond_6
    if-nez v48, :cond_8

    .line 2028
    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    .line 2030
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v7, v53

    move-object v9, v15

    .line 2028
    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher4/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v43

    .line 2053
    .local v43, "info":Lcom/android/launcher4/ShortcutInfo;
    :cond_7
    :goto_2
    if-eqz v43, :cond_b

    .line 2054
    move-wide/from16 v0, v40

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/launcher4/ShortcutInfo;->id:J

    .line 2055
    move-object/from16 v0, v43

    iput-object v8, v0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2056
    move/from16 v0, v32

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 2057
    .local v31, "container":I
    move/from16 v0, v31

    int-to-long v6, v0

    move-object/from16 v0, v43

    iput-wide v6, v0, Lcom/android/launcher4/ShortcutInfo;->container:J

    .line 2058
    move/from16 v0, v66

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, v43

    iput-wide v6, v0, Lcom/android/launcher4/ShortcutInfo;->screenId:J

    .line 2059
    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v43

    iput v6, v0, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 2060
    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v43

    iput v6, v0, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    .line 2061
    const/4 v6, 0x1

    move-object/from16 v0, v43

    iput v6, v0, Lcom/android/launcher4/ShortcutInfo;->spanX:I

    .line 2062
    const/4 v6, 0x1

    move-object/from16 v0, v43

    iput v6, v0, Lcom/android/launcher4/ShortcutInfo;->spanY:I

    .line 2067
    const/16 v6, -0x64

    move/from16 v0, v31

    if-ne v0, v6, :cond_9

    .line 2068
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/launcher4/LauncherModel$LoaderTask;->checkItemDimensions(Lcom/android/launcher4/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2069
    const-string v6, "Launcher.Model"

    .line 2070
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Skipped loading out of bounds shortcut: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2071
    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2072
    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2073
    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2074
    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/launcher4/DeviceProfile;->numRows:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2070
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2075
    const/4 v9, 0x1

    .line 2069
    invoke-static {v6, v7, v9}, Lcom/android/launcher4/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2032
    .end local v31    # "container":I
    .end local v43    # "info":Lcom/android/launcher4/ShortcutInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    move-object v14, v10

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-static/range {v13 .. v20}, Lcom/android/launcher4/LauncherModel;->access$16(Lcom/android/launcher4/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v43

    .line 2042
    .restart local v43    # "info":Lcom/android/launcher4/ShortcutInfo;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2043
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2044
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2045
    const-string v7, "android.intent.action.MAIN"

    .line 2044
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2045
    if-eqz v6, :cond_7

    .line 2046
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 2047
    const-string v7, "android.intent.category.LAUNCHER"

    .line 2046
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 2047
    if-eqz v6, :cond_7

    .line 2048
    const/high16 v6, 0x10200000

    invoke-virtual {v8, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2080
    .restart local v31    # "container":I
    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2081
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v43

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/LauncherModel$LoaderTask;->checkItemPlacement(Ljava/util/HashMap;Lcom/android/launcher4/ItemInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v6

    .line 2082
    if-nez v6, :cond_a

    .line 2083
    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2084
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2089
    :cond_a
    packed-switch v31, :pswitch_data_1

    .line 2097
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v76, v0

    .line 2096
    move-wide/from16 v0, v76

    invoke-static {v6, v0, v1}, Lcom/android/launcher4/LauncherModel;->access$17(Ljava/util/HashMap;J)Lcom/android/launcher4/FolderInfo;

    move-result-object v37

    .line 2098
    .local v37, "folderInfo":Lcom/android/launcher4/FolderInfo;
    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/launcher4/FolderInfo;->add(Lcom/android/launcher4/ShortcutInfo;)V

    .line 2101
    .end local v37    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    :goto_3
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/android/launcher4/ShortcutInfo;->id:J

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    sget-object v7, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v43

    invoke-virtual {v6, v7, v0, v10, v11}, Lcom/android/launcher4/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher4/ShortcutInfo;Landroid/database/Cursor;I)Z

    goto/16 :goto_0

    .line 2092
    :pswitch_2
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2109
    .end local v31    # "container":I
    :cond_b
    new-instance v6, Ljava/lang/RuntimeException;

    .line 2110
    const-string v7, "Unexpected null ShortcutInfo"

    .line 2109
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2115
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v30    # "cn":Landroid/content/ComponentName;
    .end local v40    # "id":J
    .end local v43    # "info":Lcom/android/launcher4/ShortcutInfo;
    .end local v44    # "intentDescription":Ljava/lang/String;
    :pswitch_3
    move/from16 v0, v42

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 2117
    .restart local v40    # "id":J
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    .line 2116
    move-wide/from16 v0, v40

    invoke-static {v6, v0, v1}, Lcom/android/launcher4/LauncherModel;->access$17(Ljava/util/HashMap;J)Lcom/android/launcher4/FolderInfo;

    move-result-object v37

    .line 2119
    .restart local v37    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v37

    iput-object v6, v0, Lcom/android/launcher4/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2120
    move-wide/from16 v0, v40

    move-object/from16 v2, v37

    iput-wide v0, v2, Lcom/android/launcher4/FolderInfo;->id:J

    .line 2121
    move/from16 v0, v32

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 2122
    .restart local v31    # "container":I
    move/from16 v0, v31

    int-to-long v6, v0

    move-object/from16 v0, v37

    iput-wide v6, v0, Lcom/android/launcher4/FolderInfo;->container:J

    .line 2123
    move/from16 v0, v66

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, v37

    iput-wide v6, v0, Lcom/android/launcher4/FolderInfo;->screenId:J

    .line 2124
    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v37

    iput v6, v0, Lcom/android/launcher4/FolderInfo;->cellX:I

    .line 2125
    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v37

    iput v6, v0, Lcom/android/launcher4/FolderInfo;->cellY:I

    .line 2126
    const/4 v6, 0x1

    move-object/from16 v0, v37

    iput v6, v0, Lcom/android/launcher4/FolderInfo;->spanX:I

    .line 2127
    const/4 v6, 0x1

    move-object/from16 v0, v37

    iput v6, v0, Lcom/android/launcher4/FolderInfo;->spanY:I

    .line 2130
    const/16 v6, -0x64

    move/from16 v0, v31

    if-ne v0, v6, :cond_c

    .line 2131
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/launcher4/LauncherModel$LoaderTask;->checkItemDimensions(Lcom/android/launcher4/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2132
    const-string v6, "Launcher.Model"

    .line 2133
    const-string v7, "Skipped loading out of bounds folder"

    .line 2132
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2138
    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2139
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v37

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/LauncherModel$LoaderTask;->checkItemPlacement(Ljava/util/HashMap;Lcom/android/launcher4/ItemInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v6

    .line 2140
    if-nez v6, :cond_d

    .line 2141
    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2142
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2147
    :cond_d
    packed-switch v31, :pswitch_data_2

    .line 2154
    :goto_4
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/launcher4/FolderInfo;->id:J

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/launcher4/FolderInfo;->id:J

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2150
    :pswitch_4
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2160
    .end local v31    # "container":I
    .end local v37    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    .end local v40    # "id":J
    :pswitch_5
    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 2162
    .local v22, "appWidgetId":I
    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 2164
    .local v63, "savedProvider":Ljava/lang/String;
    move/from16 v0, v42

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 2167
    .restart local v40    # "id":J
    move-object/from16 v0, v74

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v61

    .line 2169
    .local v61, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v46, :cond_f

    .line 2170
    if-eqz v61, :cond_e

    .line 2171
    move-object/from16 v0, v61

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v6, :cond_e

    move-object/from16 v0, v61

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2172
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f

    .line 2173
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Deleting widget that isn\'t installed anymore: id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2174
    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2175
    const-string v7, " appWidgetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2176
    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 2177
    .local v52, "log":Ljava/lang/String;
    const-string v6, "Launcher.Model"

    move-object/from16 v0, v52

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const-string v6, "Launcher.Model"

    const/4 v7, 0x0

    move-object/from16 v0, v52

    invoke-static {v6, v0, v7}, Lcom/android/launcher4/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2179
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2181
    .end local v52    # "log":Ljava/lang/String;
    :cond_f
    new-instance v24, Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 2182
    move-object/from16 v0, v61

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2181
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v0, v1, v6}, Lcom/android/launcher4/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 2183
    .local v24, "appWidgetInfo":Lcom/android/launcher4/LauncherAppWidgetInfo;
    move-wide/from16 v0, v40

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/launcher4/LauncherAppWidgetInfo;->id:J

    .line 2185
    move/from16 v0, v66

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    .line 2184
    move-object/from16 v0, v24

    iput-wide v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->screenId:J

    .line 2186
    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->cellX:I

    .line 2187
    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->cellY:I

    .line 2188
    move/from16 v0, v67

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanX:I

    .line 2189
    move/from16 v0, v68

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanY:I

    .line 2191
    move-object/from16 v0, v61

    invoke-static {v15, v0}, Lcom/android/launcher4/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v58

    .line 2193
    .local v58, "minSpan":[I
    const/4 v6, 0x0

    aget v6, v58, v6

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->minSpanX:I

    .line 2194
    const/4 v6, 0x1

    aget v6, v58, v6

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->minSpanY:I

    .line 2196
    move/from16 v0, v32

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 2197
    .restart local v31    # "container":I
    const/16 v6, -0x64

    move/from16 v0, v31

    if-eq v0, v6, :cond_10

    .line 2198
    const/16 v6, -0x65

    move/from16 v0, v31

    if-eq v0, v6, :cond_10

    .line 2199
    const-string v6, "Launcher.Model"

    .line 2200
    const-string v7, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    .line 2199
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2206
    :cond_10
    move/from16 v0, v32

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    .line 2205
    move-object/from16 v0, v24

    iput-wide v6, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->container:J

    .line 2208
    const/16 v6, -0x64

    move/from16 v0, v31

    if-ne v0, v6, :cond_11

    .line 2209
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/launcher4/LauncherModel$LoaderTask;->checkItemDimensions(Lcom/android/launcher4/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2210
    const-string v6, "Launcher.Model"

    .line 2211
    const-string v7, "Skipped loading out of bounds app widget"

    .line 2210
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2216
    :cond_11
    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2217
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v24

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/LauncherModel$LoaderTask;->checkItemPlacement(Ljava/util/HashMap;Lcom/android/launcher4/ItemInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v6

    .line 2218
    if-nez v6, :cond_12

    .line 2219
    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2220
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2224
    :cond_12
    move-object/from16 v0, v61

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2225
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v62

    .line 2226
    .local v62, "providerName":Ljava/lang/String;
    invoke-virtual/range {v62 .. v63}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 2227
    new-instance v72, Landroid/content/ContentValues;

    invoke-direct/range {v72 .. v72}, Landroid/content/ContentValues;-><init>()V

    .line 2229
    .local v72, "values":Landroid/content/ContentValues;
    const-string v6, "appWidgetProvider"

    .line 2228
    move-object/from16 v0, v72

    move-object/from16 v1, v62

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    const-string v73, "_id= ?"

    .line 2232
    .local v73, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v6, 0x0

    .line 2233
    move/from16 v0, v42

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2232
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v26, v6

    .line 2234
    .local v26, "args":[Ljava/lang/String;
    move-object/from16 v0, v72

    move-object/from16 v1, v73

    move-object/from16 v2, v26

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2237
    .end local v26    # "args":[Ljava/lang/String;
    .end local v72    # "values":Landroid/content/ContentValues;
    .end local v73    # "where":Ljava/lang/String;
    :cond_13
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;->id:J

    move-wide/from16 v76, v0

    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 2261
    .end local v22    # "appWidgetId":I
    .end local v24    # "appWidgetInfo":Lcom/android/launcher4/LauncherAppWidgetInfo;
    .end local v31    # "container":I
    .end local v35    # "deleteOnItemOverlap":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v40    # "id":J
    .end local v48    # "itemType":I
    .end local v58    # "minSpan":[I
    .end local v61    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v62    # "providerName":Ljava/lang/String;
    .end local v63    # "savedProvider":Ljava/lang/String;
    :cond_14
    :try_start_b
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_15

    .line 2263
    sget-object v6, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v29

    .line 2265
    .local v29, "client":Landroid/content/ContentProviderClient;
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_18

    .line 2279
    .end local v29    # "client":Landroid/content/ContentProviderClient;
    :cond_15
    if-eqz v51, :cond_1b

    .line 2280
    const-wide/16 v56, 0x0

    .line 2282
    .local v56, "maxScreenId":J
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_19

    .line 2294
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2296
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getLauncherProvider()Lcom/android/launcher4/LauncherProvider;

    move-result-object v6

    move-wide/from16 v0, v56

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher4/LauncherProvider;->updateMaxScreenId(J)V

    .line 2298
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    sget-object v7, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v6, v15, v7}, Lcom/android/launcher4/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2301
    const-wide/16 v54, 0x0

    .line 2303
    .local v54, "maxItemId":J
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 2306
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getLauncherProvider()Lcom/android/launcher4/LauncherProvider;

    move-result-object v6

    move-wide/from16 v0, v54

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher4/LauncherProvider;->updateMaxItemId(J)V

    .line 1923
    .end local v54    # "maxItemId":J
    .end local v56    # "maxScreenId":J
    :cond_17
    :goto_8
    monitor-exit v75

    goto/16 :goto_1

    .line 2265
    .restart local v29    # "client":Landroid/content/ContentProviderClient;
    :cond_18
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-wide v40

    .line 2272
    .restart local v40    # "id":J
    const/4 v6, 0x0

    :try_start_c
    move-wide/from16 v0, v40

    invoke-static {v0, v1, v6}, Lcom/android/launcher4/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 2271
    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v9, v13}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    .line 2273
    :catch_2
    move-exception v36

    .line 2274
    .local v36, "e":Landroid/os/RemoteException;
    :try_start_d
    const-string v6, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "Could not remove id = "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v40

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2282
    .end local v29    # "client":Landroid/content/ContentProviderClient;
    .end local v36    # "e":Landroid/os/RemoteException;
    .end local v40    # "id":J
    .restart local v56    # "maxScreenId":J
    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/launcher4/ItemInfo;

    .line 2285
    .local v47, "item":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    move-wide/from16 v64, v0

    .line 2286
    .local v64, "screenId":J
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/launcher4/ItemInfo;->container:J

    move-wide/from16 v76, v0

    const-wide/16 v78, -0x64

    cmp-long v7, v76, v78

    if-nez v7, :cond_16

    .line 2287
    sget-object v7, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 2288
    sget-object v7, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2289
    cmp-long v7, v64, v56

    if-lez v7, :cond_16

    .line 2290
    move-wide/from16 v56, v64

    goto/16 :goto_6

    .line 2303
    .end local v47    # "item":Lcom/android/launcher4/ItemInfo;
    .end local v64    # "screenId":J
    .restart local v54    # "maxItemId":J
    :cond_1a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/launcher4/ItemInfo;

    .line 2304
    .restart local v47    # "item":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/launcher4/ItemInfo;->id:J

    move-wide/from16 v76, v0

    move-wide/from16 v0, v54

    move-wide/from16 v2, v76

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v54

    goto/16 :goto_7

    .line 2309
    .end local v47    # "item":Lcom/android/launcher4/ItemInfo;
    .end local v54    # "maxItemId":J
    .end local v56    # "maxScreenId":J
    :cond_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher4/LauncherModel;->access$18(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v60

    .line 2310
    .local v60, "orderedScreens":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual/range {v60 .. v60}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 2315
    new-instance v69, Ljava/util/ArrayList;

    .line 2316
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    .line 2315
    move-object/from16 v0, v69

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2317
    .local v69, "unusedScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 2329
    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_17

    .line 2330
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2331
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    sget-object v7, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v6, v15, v7}, Lcom/android/launcher4/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_8

    .line 2310
    .end local v69    # "unusedScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 2311
    .local v39, "i":Ljava/lang/Integer;
    sget-object v9, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v60

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2317
    .end local v39    # "i":Ljava/lang/Integer;
    .restart local v69    # "unusedScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/launcher4/ItemInfo;

    .line 2321
    .restart local v47    # "item":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    move-wide/from16 v64, v0

    .line 2322
    .restart local v64    # "screenId":J
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/launcher4/ItemInfo;->container:J

    move-wide/from16 v76, v0

    const-wide/16 v78, -0x64

    cmp-long v7, v76, v78

    if-nez v7, :cond_1c

    .line 2323
    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2324
    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_a

    .line 1990
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 2089
    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2147
    :pswitch_data_2
    .packed-switch -0x65
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 6

    .prologue
    .line 2719
    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 2720
    .local v2, "oldCallbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-nez v2, :cond_0

    .line 2723
    const-string v4, "Launcher.Model"

    .line 2724
    const-string v5, "LoaderTask running with no launcher (onlyBindAllApps)"

    .line 2723
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :goto_0
    return-void

    .line 2730
    :cond_0
    sget-object v4, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    .line 2731
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 2730
    check-cast v1, Ljava/util/ArrayList;

    .line 2732
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    new-instance v3, Lcom/android/launcher4/LauncherModel$LoaderTask$11;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/launcher4/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 2748
    .local v3, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/launcher4/LauncherModel;->access$21()Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    .line 2749
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 2748
    if-ne v4, v5, :cond_1

    const/4 v0, 0x0

    .line 2750
    .local v0, "isRunningOnMainThread":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 2751
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2748
    .end local v0    # "isRunningOnMainThread":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 2753
    .restart local v0    # "isRunningOnMainThread":Z
    :cond_2
    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher4/LauncherModel;->access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher4/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2477
    .local p1, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 2478
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 2480
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    new-instance v2, Lcom/android/launcher4/LauncherModel$LoaderTask$3;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher4/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/DeviceProfile;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2495
    return-void
.end method

.method private verifyApplications()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 1775
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel;->access$12(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1780
    .local v3, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1781
    .local v0, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    sget-object v7, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1782
    :try_start_0
    sget-object v5, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1781
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1794
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/LauncherModel$Callbacks;

    move-object v2, v5

    .line 1795
    .local v2, "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :goto_1
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v5, v3, v0, v2, v6}, Lcom/android/launcher4/LauncherModel;->addAndBindAddedApps(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 1797
    .end local v2    # "cb":Lcom/android/launcher4/LauncherModel$Callbacks;
    :cond_1
    return-void

    .line 1782
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/AppInfo;

    .line 1783
    .local v1, "app":Lcom/android/launcher4/AppInfo;
    iget-object v8, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v9, v1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v8, v9}, Lcom/android/launcher4/LauncherModel;->access$13(Lcom/android/launcher4/LauncherModel;Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1784
    .local v4, "tmpInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1787
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Missing Application on load: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1781
    .end local v1    # "app":Lcom/android/launcher4/AppInfo;
    .end local v4    # "tmpInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    move-object v2, v6

    .line 1794
    goto :goto_1
.end method

.method private waitForIdle()V
    .locals 4

    .prologue
    .line 1559
    monitor-enter p0

    .line 1561
    const-wide/16 v0, 0x0

    .line 1563
    .local v0, "workspaceWaitTime":J
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher4/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher4/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher4/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher4/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1575
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    if-nez v2, :cond_0

    .line 1576
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$4(Lcom/android/launcher4/LauncherModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1559
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    return-void

    .line 1581
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1582
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1559
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 4

    .prologue
    .line 2837
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2838
    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mContext="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mIsLaunching="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mStopped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2842
    iget-boolean v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2841
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mItems size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    monitor-exit v1

    .line 2845
    return-void

    .line 2837
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 1520
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method isLoadingWorkspace()Z
    .locals 1

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 1643
    const/4 v1, 0x0

    .line 1645
    .local v1, "isUpgrade":Z
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel;->access$6(Lcom/android/launcher4/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1646
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/launcher4/LauncherModel;->access$8(Lcom/android/launcher4/LauncherModel;Z)V

    .line 1645
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher4/LauncherModel;->access$6(Lcom/android/launcher4/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1662
    :try_start_1
    iget-boolean v6, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v6, :cond_2

    :goto_0
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1657
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1667
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->loadAndBindWorkspace()Z

    move-result v1

    .line 1669
    iget-boolean v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_3

    .line 1702
    :goto_1
    sget-object v5, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1703
    :try_start_2
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1707
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1702
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1710
    sget-boolean v3, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v3, :cond_0

    .line 1714
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->verifyApplications()V

    .line 1721
    :cond_0
    iput-object v9, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1723
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher4/LauncherModel;->access$6(Lcom/android/launcher4/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1726
    :try_start_3
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher4/LauncherModel;->access$9(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherModel$LoaderTask;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 1727
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/launcher4/LauncherModel;->access$10(Lcom/android/launcher4/LauncherModel;Lcom/android/launcher4/LauncherModel$LoaderTask;)V

    .line 1729
    :cond_1
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/launcher4/LauncherModel;->access$8(Lcom/android/launcher4/LauncherModel;Z)V

    .line 1723
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1734
    return-void

    .line 1645
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :cond_2
    move v3, v4

    .line 1663
    goto :goto_0

    .line 1657
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 1676
    :cond_3
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher4/LauncherModel;->access$6(Lcom/android/launcher4/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1677
    :try_start_6
    iget-boolean v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_4

    .line 1681
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1676
    :cond_4
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1684
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->waitForIdle()V

    .line 1689
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 1693
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher4/LauncherModel;->access$6(Lcom/android/launcher4/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1695
    const/4 v3, 0x0

    :try_start_7
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1693
    monitor-exit v4

    goto :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 1676
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 1703
    :cond_5
    :try_start_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1704
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v8, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher4/ShortcutInfo;

    move-object v3, v0

    .line 1705
    sget-object v4, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1704
    invoke-virtual {v7, v8, v3, v4}, Lcom/android/launcher4/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher4/ShortcutInfo;[B)V

    goto :goto_2

    .line 1702
    .end local v2    # "key":Ljava/lang/Object;
    :catchall_4
    move-exception v3

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    .line 1723
    :catchall_5
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v3
.end method

.method runBindSynchronousPage(I)V
    .locals 3
    .param p1, "synchronousBindPage"    # I

    .prologue
    .line 1595
    if-gez p1, :cond_0

    .line 1597
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1598
    const-string v1, "Should not call runBindSynchronousPage() without valid page index"

    .line 1597
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$5(Lcom/android/launcher4/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$1(Lcom/android/launcher4/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1606
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1607
    const-string v1, "Expecting AllApps and Workspace to be loaded"

    .line 1606
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$6(Lcom/android/launcher4/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1610
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$7(Lcom/android/launcher4/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1614
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1615
    const-string v2, "Error! Background loading is already running"

    .line 1614
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$3(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/DeferredHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/DeferredHandler;->flush()V

    .line 1635
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->bindWorkspace(IZ)V

    .line 1639
    invoke-direct {p0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->onlyBindAllApps()V

    .line 1640
    return-void
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 1737
    monitor-enter p0

    .line 1738
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    .line 1739
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1737
    monitor-exit p0

    .line 1741
    return-void

    .line 1737
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher4/LauncherModel$Callbacks;)Lcom/android/launcher4/LauncherModel$Callbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher4/LauncherModel$Callbacks;

    .prologue
    const/4 v1, 0x0

    .line 1752
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher4/LauncherModel;->access$6(Lcom/android/launcher4/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1753
    :try_start_0
    iget-boolean v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 1754
    monitor-exit v2

    move-object v0, v1

    .line 1770
    :goto_0
    return-object v0

    .line 1757
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1758
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1761
    :cond_1
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher4/LauncherModel;->access$11(Lcom/android/launcher4/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 1762
    .local v0, "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 1763
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1765
    :cond_2
    if-nez v0, :cond_3

    .line 1766
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1770
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 1752
    .end local v0    # "callbacks":Lcom/android/launcher4/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
