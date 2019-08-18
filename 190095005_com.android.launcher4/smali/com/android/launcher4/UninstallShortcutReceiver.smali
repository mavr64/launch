.class public Lcom/android/launcher4/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
    }
.end annotation


# static fields
.field private static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static mUninstallQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mUseUninstallQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    sput-object v0, Lcom/android/launcher4/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher4/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static disableAndFlushUninstallQueue(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher4/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    .line 70
    sget-object v1, Lcom/android/launcher4/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    return-void

    .line 72
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    invoke-static {p0, v1}, Lcom/android/launcher4/UninstallShortcutReceiver;->processUninstallShortcut(Landroid/content/Context;Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method static enableUninstallQueue()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher4/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    .line 66
    return-void
.end method

.method private static processUninstallShortcut(Landroid/content/Context;Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pendingInfo"    # Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    .prologue
    .line 79
    iget-object v1, p1, Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->data:Landroid/content/Intent;

    .line 81
    .local v1, "data":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher4/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 83
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    monitor-enter v0

    .line 84
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/launcher4/UninstallShortcutReceiver;->removeShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    .line 83
    monitor-exit v0

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static removeShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 89
    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 90
    .local v14, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 91
    .local v16, "name":Ljava/lang/String;
    const-string v3, "duplicate"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 93
    .local v10, "duplicate":Z
    if-eqz v14, :cond_1

    if-eqz v16, :cond_1

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 95
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 96
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v5

    .line 97
    const-string v5, "title=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x0

    .line 95
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 99
    .local v8, "c":Landroid/database/Cursor;
    const-string v3, "intent"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 100
    .local v15, "intentIndex":I
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 102
    .local v11, "idIndex":I
    const/4 v9, 0x0

    .line 105
    .local v9, "changed":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 121
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 124
    if-eqz v9, :cond_1

    .line 125
    sget-object v3, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 126
    const v3, 0x7f0c0023

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 127
    const/4 v4, 0x0

    .line 126
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 130
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "changed":Z
    .end local v11    # "idIndex":I
    .end local v15    # "intentIndex":I
    :cond_1
    return-void

    .line 107
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "changed":Z
    .restart local v11    # "idIndex":I
    .restart local v15    # "intentIndex":I
    :cond_2
    :try_start_1
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 109
    .local v12, "id":J
    const/4 v3, 0x0

    invoke-static {v12, v13, v3}, Lcom/android/launcher4/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v17

    .line 110
    .local v17, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    const/4 v9, 0x1

    .line 112
    if-nez v10, :cond_0

    goto :goto_1

    .line 120
    .end local v12    # "id":J
    .end local v17    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    .line 121
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 122
    throw v3

    .line 116
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    invoke-direct {v0, p2}, Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;-><init>(Landroid/content/Intent;)V

    .line 57
    .local v0, "info":Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
    sget-boolean v1, Lcom/android/launcher4/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    if-eqz v1, :cond_1

    .line 58
    sget-object v1, Lcom/android/launcher4/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p1, v0}, Lcom/android/launcher4/UninstallShortcutReceiver;->processUninstallShortcut(Landroid/content/Context;Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V

    goto :goto_0
.end method
