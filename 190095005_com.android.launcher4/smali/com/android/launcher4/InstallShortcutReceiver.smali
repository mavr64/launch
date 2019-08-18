.class public Lcom/android/launcher4/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final APPS_PENDING_INSTALL:Ljava/lang/String; = "apps_to_install"

.field public static final DATA_INTENT_KEY:Ljava/lang/String; = "intent.data"

.field private static final DBG:Z = false

.field public static final ICON_KEY:Ljava/lang/String; = "icon"

.field public static final ICON_RESOURCE_NAME_KEY:Ljava/lang/String; = "iconResource"

.field public static final ICON_RESOURCE_PACKAGE_NAME_KEY:Ljava/lang/String; = "iconResourcePackage"

.field private static final INSTALL_SHORTCUT_IS_DUPLICATE:I = -0x1

.field private static final INSTALL_SHORTCUT_SUCCESSFUL:I = 0x0

.field public static final LAUNCH_INTENT_KEY:Ljava/lang/String; = "intent.launch"

.field public static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher4/shortcut"

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static mUseInstallQueue:Z

.field private static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher4/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher4/InstallShortcutReceiver;->mUseInstallQueue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static addToInstallQueue(Landroid/content/SharedPreferences;Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;)V
    .locals 9
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "info"    # Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 80
    sget-object v5, Lcom/android/launcher4/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 82
    :try_start_0
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 83
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    .line 84
    const-string v6, "intent.data"

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v6, p1, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 85
    const-string v6, "intent.launch"

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v6, p1, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 86
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v6, p1, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 87
    .local v3, "json":Lorg/json/JSONStringer;
    iget-object v4, p1, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p1, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/android/launcher4/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 89
    .local v2, "iconByteArray":[B
    const-string v4, "icon"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 91
    const/4 v6, 0x0

    array-length v7, v2

    const/4 v8, 0x0

    .line 90
    invoke-static {v2, v6, v7, v8}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 93
    .end local v2    # "iconByteArray":[B
    :cond_0
    iget-object v4, p1, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v4, :cond_1

    .line 94
    const-string v4, "iconResource"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v6, p1, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v6, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 95
    const-string v4, "iconResourcePackage"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 96
    iget-object v6, p1, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v6, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 98
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v3

    .line 99
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 101
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "apps_to_install"

    invoke-virtual {v3}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v1, v4, v6}, Lcom/android/launcher4/InstallShortcutReceiver;->addToStringSet(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "json":Lorg/json/JSONStringer;
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "InstallShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception when adding shortcut: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private static addToStringSet(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v2, 0x0

    invoke-interface {p0, p2, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 69
    .local v0, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 74
    .restart local v0    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 76
    return-void

    .line 72
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .end local v0    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v1

    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method static disableAndFlushInstallQueue(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher4/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 259
    invoke-static {p0}, Lcom/android/launcher4/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 260
    return-void
.end method

.method static enableInstallQueue()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher4/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 256
    return-void
.end method

.method static flushInstallQueue(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, "spKey":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 264
    .local v12, "sp":Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/android/launcher4/InstallShortcutReceiver;->getAndClearInstallQueue(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    move-result-object v6

    .line 265
    .local v6, "installQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 266
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 267
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    const/4 v11, 0x0

    .line 269
    .local v11, "result":I
    const-string v3, ""

    .line 270
    .local v3, "duplicateName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 294
    const/4 v14, -0x1

    if-ne v11, v14, :cond_1

    .line 295
    const v14, 0x7f0c0024

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 296
    aput-object v3, v15, v16

    .line 295
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 296
    const/4 v15, 0x0

    .line 295
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 296
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 300
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 301
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    .line 302
    .local v2, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getModel()Lcom/android/launcher4/LauncherModel;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/launcher4/LauncherModel;->addAndBindAddedApps(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 305
    .end local v1    # "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .end local v2    # "app":Lcom/android/launcher4/LauncherAppState;
    .end local v3    # "duplicateName":Ljava/lang/String;
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    .end local v11    # "result":I
    :cond_2
    return-void

    .line 271
    .restart local v1    # "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    .restart local v3    # "duplicateName":Ljava/lang/String;
    .restart local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    .restart local v11    # "result":I
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .line 273
    .local v10, "pendingInfo":Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;
    iget-object v7, v10, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 274
    .local v7, "intent":Landroid/content/Intent;
    iget-object v9, v10, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->name:Ljava/lang/String;

    .line 275
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v9, v7}, Lcom/android/launcher4/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    .line 279
    .local v4, "exists":Z
    if-nez v4, :cond_0

    .line 281
    iget-object v14, v10, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 282
    iget-object v15, v10, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 281
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/launcher4/InstallShortcutReceiver;->getShortcutInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v5

    .line 283
    .local v5, "info":Lcom/android/launcher4/ShortcutInfo;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getAndClearInstallQueue(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
    .locals 23
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v19, Lcom/android/launcher4/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v19

    .line 147
    :try_start_0
    const-string v18, "apps_to_install"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v17

    .line 149
    .local v17, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v17, :cond_0

    .line 150
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v19

    .line 187
    :goto_0
    return-object v12

    .line 153
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v12, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1

    .line 186
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v20, "apps_to_install"

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    monitor-exit v19

    goto :goto_0

    .line 146
    .end local v12    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    .end local v17    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 154
    .restart local v12    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    .restart local v17    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .local v13, "json":Ljava/lang/String;
    :try_start_2
    new-instance v20, Lorg/json/JSONTokener;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 157
    .local v16, "object":Lorg/json/JSONObject;
    const-string v20, "intent.data"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 159
    .local v4, "data":Landroid/content/Intent;
    const-string v20, "intent.launch"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    .line 160
    .local v14, "launchIntent":Landroid/content/Intent;
    const-string v20, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 161
    .local v15, "name":Ljava/lang/String;
    const-string v20, "icon"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "iconBase64":Ljava/lang/String;
    const-string v20, "iconResource"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "iconResourceName":Ljava/lang/String;
    const-string v20, "iconResourcePackage"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, "iconResourcePackageName":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    .line 166
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v7, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 167
    .local v6, "iconArray":[B
    const/16 v20, 0x0

    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 168
    .local v3, "b":Landroid/graphics/Bitmap;
    const-string v20, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "iconArray":[B
    :cond_2
    :goto_2
    const-string v20, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    new-instance v11, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v11, v4, v15, v14}, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 179
    .local v11, "info":Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 180
    .end local v4    # "data":Landroid/content/Intent;
    .end local v7    # "iconBase64":Ljava/lang/String;
    .end local v9    # "iconResourceName":Ljava/lang/String;
    .end local v10    # "iconResourcePackageName":Ljava/lang/String;
    .end local v11    # "info":Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .end local v14    # "launchIntent":Landroid/content/Intent;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 181
    .local v5, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v20, "InstallShortcutReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Exception reading shortcut to add: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 169
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v4    # "data":Landroid/content/Intent;
    .restart local v7    # "iconBase64":Ljava/lang/String;
    .restart local v9    # "iconResourceName":Ljava/lang/String;
    .restart local v10    # "iconResourcePackageName":Ljava/lang/String;
    .restart local v14    # "launchIntent":Landroid/content/Intent;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "object":Lorg/json/JSONObject;
    :cond_3
    if-eqz v9, :cond_2

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    .line 171
    new-instance v8, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v8}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 172
    .local v8, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    iput-object v9, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 173
    iput-object v10, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 174
    const-string v20, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 182
    .end local v4    # "data":Landroid/content/Intent;
    .end local v7    # "iconBase64":Ljava/lang/String;
    .end local v8    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v9    # "iconResourceName":Ljava/lang/String;
    .end local v10    # "iconResourcePackageName":Ljava/lang/String;
    .end local v14    # "launchIntent":Landroid/content/Intent;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 183
    .local v5, "e":Ljava/net/URISyntaxException;
    :try_start_5
    const-string v20, "InstallShortcutReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Exception reading shortcut to add: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method private static getShortcutInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Lcom/android/launcher4/ShortcutInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 310
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 318
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getModel()Lcom/android/launcher4/LauncherModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/launcher4/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher4/ShortcutInfo;

    move-result-object v1

    return-object v1

    .line 311
    .end local v0    # "app":Lcom/android/launcher4/LauncherAppState;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/high16 v1, 0x10200000

    .line 314
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static removeFromInstallQueue(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 12
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/launcher4/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 112
    :try_start_0
    const-string v8, "apps_to_install"

    const/4 v10, 0x0

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 117
    .local v7, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 118
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 119
    .local v3, "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 120
    .local v4, "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 138
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v10, "apps_to_install"

    .line 139
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 138
    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 139
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    .end local v3    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v9

    .line 142
    return-void

    .line 121
    .restart local v3    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .local v1, "json":Ljava/lang/String;
    :try_start_1
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 124
    .local v5, "object":Lorg/json/JSONObject;
    const-string v8, "intent.launch"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 125
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "pn":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 127
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 129
    :cond_3
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 130
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "pn":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v8, "InstallShortcutReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception reading shortcut to remove: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Ljava/lang/String;
    .end local v3    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 134
    .restart local v1    # "json":Ljava/lang/String;
    .restart local v3    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "newStringsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_3
    const-string v8, "InstallShortcutReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception reading shortcut to remove: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 211
    const-string v11, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v11, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 218
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 223
    const-string v11, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "name":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 226
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 227
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 228
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 233
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const-string v11, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 235
    .local v1, "icon":Landroid/graphics/Bitmap;
    const-string v11, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$ShortcutIconResource;

    .line 238
    .local v2, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher4/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 239
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 240
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v11

    if-nez v11, :cond_3

    const/4 v5, 0x1

    .line 242
    .local v5, "launcherNotLoaded":Z
    :goto_1
    new-instance v3, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v3, p2, v6, v4}, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 243
    .local v3, "info":Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;
    iput-object v1, v3, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->icon:Landroid/graphics/Bitmap;

    .line 244
    iput-object v2, v3, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 246
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, "spKey":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 248
    .local v9, "sp":Landroid/content/SharedPreferences;
    invoke-static {v9, v3}, Lcom/android/launcher4/InstallShortcutReceiver;->addToInstallQueue(Landroid/content/SharedPreferences;Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;)V

    .line 249
    sget-boolean v11, Lcom/android/launcher4/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v11, :cond_0

    if-nez v5, :cond_0

    .line 250
    invoke-static {p1}, Lcom/android/launcher4/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    goto :goto_0

    .line 229
    .end local v0    # "app":Lcom/android/launcher4/LauncherAppState;
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v3    # "info":Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .end local v5    # "launcherNotLoaded":Z
    .end local v9    # "sp":Landroid/content/SharedPreferences;
    .end local v10    # "spKey":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 230
    .local v7, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 240
    .end local v7    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "app":Lcom/android/launcher4/LauncherAppState;
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    .restart local v2    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
