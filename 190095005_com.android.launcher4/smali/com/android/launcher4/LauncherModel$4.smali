.class Lcom/android/launcher4/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->addAndBindAddedApps(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;

.field private final synthetic val$allAppsApps:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$workspaceApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher4/LauncherModel$Callbacks;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$4;->this$0:Lcom/android/launcher4/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$4;->val$workspaceApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher4/LauncherModel$4;->val$allAppsApps:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher4/LauncherModel$4;->val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/LauncherModel$4;)Lcom/android/launcher4/LauncherModel;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$4;->this$0:Lcom/android/launcher4/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 394
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v14, "addedShortcutsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v15, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v27, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher4/LauncherModel;->access$18(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v23

    .line 404
    .local v23, "orderedScreens":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 409
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 410
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    sget-object v28, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v28

    .line 413
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->val$workspaceApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 414
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/ItemInfo;>;"
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 412
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->this$0:Lcom/android/launcher4/LauncherModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/LauncherModel$4;->val$context:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v4, v6, v0}, Lcom/android/launcher4/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 491
    if-eqz v14, :cond_2

    .line 492
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 493
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->val$allAppsApps:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->val$allAppsApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 494
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->this$0:Lcom/android/launcher4/LauncherModel;

    new-instance v6, Lcom/android/launcher4/LauncherModel$4$1;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/LauncherModel$4;->val$callbacks:Lcom/android/launcher4/LauncherModel$Callbacks;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher4/LauncherModel$4;->val$allAppsApps:Ljava/util/ArrayList;

    move-object/from16 v7, p0

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher4/LauncherModel$4$1;-><init>(Lcom/android/launcher4/LauncherModel$4;Lcom/android/launcher4/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4, v6}, Lcom/android/launcher4/LauncherModel;->access$25(Lcom/android/launcher4/LauncherModel;Ljava/lang/Runnable;)V

    .line 521
    :cond_4
    return-void

    .line 404
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/ItemInfo;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 405
    .local v17, "i":Ljava/lang/Integer;
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 406
    .local v24, "screenId":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 415
    .end local v17    # "i":Ljava/lang/Integer;
    .end local v24    # "screenId":J
    .restart local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/ItemInfo;>;"
    :cond_6
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher4/ItemInfo;

    .line 416
    .local v13, "a":Lcom/android/launcher4/ItemInfo;
    iget-object v4, v13, Lcom/android/launcher4/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 417
    .local v21, "name":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/launcher4/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 419
    .local v19, "launchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->val$context:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcom/android/launcher4/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    .line 420
    if-nez v4, :cond_1

    .line 429
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v26, 0x0

    .line 432
    .local v26, "startSearchPageIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->val$context:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/launcher4/LauncherModel;->findNextAvailableIconSpace(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v16

    .line 435
    .local v16, "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    if-nez v16, :cond_7

    .line 437
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getLauncherProvider()Lcom/android/launcher4/LauncherProvider;

    move-result-object v20

    .line 447
    .local v20, "lp":Lcom/android/launcher4/LauncherProvider;
    const/4 v4, 0x1

    .line 448
    add-int/lit8 v6, v26, 0x1

    .line 449
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 448
    sub-int/2addr v6, v7

    .line 446
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 450
    .local v22, "numPagesToAdd":I
    :goto_3
    if-gtz v22, :cond_9

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->val$context:Landroid/content/Context;

    .line 460
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/launcher4/LauncherModel;->findNextAvailableIconSpace(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v16

    .line 464
    .end local v20    # "lp":Lcom/android/launcher4/LauncherProvider;
    .end local v22    # "numPagesToAdd":I
    :cond_7
    if-nez v16, :cond_a

    .line 465
    new-instance v4, Ljava/lang/RuntimeException;

    .line 466
    const-string v6, "Coordinates should not be null"

    .line 465
    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    .end local v13    # "a":Lcom/android/launcher4/ItemInfo;
    .end local v16    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/ItemInfo;>;"
    .end local v19    # "launchIntent":Landroid/content/Intent;
    .end local v21    # "name":Ljava/lang/String;
    .end local v26    # "startSearchPageIndex":I
    :catchall_0
    move-exception v4

    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 430
    .restart local v13    # "a":Lcom/android/launcher4/ItemInfo;
    .restart local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/ItemInfo;>;"
    .restart local v19    # "launchIntent":Landroid/content/Intent;
    .restart local v21    # "name":Ljava/lang/String;
    :cond_8
    const/16 v26, 0x1

    goto :goto_2

    .line 451
    .restart local v16    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .restart local v20    # "lp":Lcom/android/launcher4/LauncherProvider;
    .restart local v22    # "numPagesToAdd":I
    .restart local v26    # "startSearchPageIndex":I
    :cond_9
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher4/LauncherProvider;->generateNewScreenId()J

    move-result-wide v24

    .line 454
    .restart local v24    # "screenId":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v22, v22, -0x1

    goto :goto_3

    .line 470
    .end local v20    # "lp":Lcom/android/launcher4/LauncherProvider;
    .end local v22    # "numPagesToAdd":I
    .end local v24    # "screenId":J
    :cond_a
    instance-of v4, v13, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v4, :cond_b

    .line 471
    move-object v0, v13

    check-cast v0, Lcom/android/launcher4/ShortcutInfo;

    move-object v5, v0

    .line 479
    .end local v13    # "a":Lcom/android/launcher4/ItemInfo;
    .local v5, "shortcutInfo":Lcom/android/launcher4/ShortcutInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherModel$4;->val$context:Landroid/content/Context;

    .line 480
    const-wide/16 v6, -0x64

    .line 481
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v16

    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [I

    const/4 v11, 0x0

    aget v10, v10, v11

    .line 482
    move-object/from16 v0, v16

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [I

    const/4 v12, 0x1

    aget v11, v11, v12

    const/4 v12, 0x0

    .line 479
    invoke-static/range {v4 .. v12}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    .line 484
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 472
    .end local v5    # "shortcutInfo":Lcom/android/launcher4/ShortcutInfo;
    .restart local v13    # "a":Lcom/android/launcher4/ItemInfo;
    :cond_b
    instance-of v4, v13, Lcom/android/launcher4/AppInfo;

    if-eqz v4, :cond_c

    .line 473
    check-cast v13, Lcom/android/launcher4/AppInfo;

    .end local v13    # "a":Lcom/android/launcher4/ItemInfo;
    invoke-virtual {v13}, Lcom/android/launcher4/AppInfo;->makeShortcut()Lcom/android/launcher4/ShortcutInfo;

    move-result-object v5

    .line 474
    .restart local v5    # "shortcutInfo":Lcom/android/launcher4/ShortcutInfo;
    goto :goto_4

    .line 475
    .end local v5    # "shortcutInfo":Lcom/android/launcher4/ShortcutInfo;
    .restart local v13    # "a":Lcom/android/launcher4/ItemInfo;
    :cond_c
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected info type"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
