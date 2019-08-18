.class public Lcom/android/launcher4/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;,
        Lcom/android/launcher4/LauncherProvider$DatabaseHelper;,
        Lcom/android/launcher4/LauncherProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE:Ljava/lang/String; = "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

.field static final AUTHORITY:Ljava/lang/String; = "com.android.launcher4.settings"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher4.db"

.field private static final DATABASE_VERSION:I = 0xf

.field static final DEFAULT_WORKSPACE_RESOURCE_ID:Ljava/lang/String; = "DEFAULT_WORKSPACE_RESOURCE_ID"

.field static final EMPTY_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DATABASE_CREATED"

.field private static final LOGD:Z = false

.field static final OLD_AUTHORITY:Ljava/lang/String; = "com.android.launcher4.settings"

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_WORKSPACE_SCREENS:Ljava/lang/String; = "workspaceScreens"

.field private static final TAG:Ljava/lang/String; = "Launcher.LauncherProvider"

.field static final UPGRADED_FROM_OLD_DATABASE:Ljava/lang/String; = "UPGRADED_FROM_OLD_DATABASE"

.field private static sJustLoadedFromOldDb:Z


# instance fields
.field private mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "content://com.android.launcher4.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    sput-object v0, Lcom/android/launcher4/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 132
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher4/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 97
    sput-boolean p0, Lcom/android/launcher4/LauncherProvider;->sJustLoadedFromOldDb:Z

    return-void
.end method

.method static synthetic access$2(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    .prologue
    .line 140
    invoke-static {p0, p1, p2}, Lcom/android/launcher4/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method

.method private addModifiedTime(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 215
    const-string v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    .local v1, "selectWhere":Ljava/lang/StringBuilder;
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 1416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1411
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1412
    if-lez v0, :cond_1

    .line 1413
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static dbInsertAndCheck(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p0, "helper"    # Lcom/android/launcher4/LauncherProvider$DatabaseHelper;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "nullColumnHack"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 134
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 141
    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lcom/android/launcher4/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 142
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;

    invoke-direct {v0, v1, v3, v3}, Lcom/android/launcher4/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    .local v0, "args":Lcom/android/launcher4/LauncherProvider$SqlArguments;
    iget-object v2, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 208
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "notify":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 212
    :cond_1
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 163
    new-instance v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher4/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 165
    .local v0, "args":Lcom/android/launcher4/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 166
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 168
    :try_start_0
    array-length v3, p2

    .line 169
    .local v3, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 181
    array-length v4, p2

    :goto_1
    return v4

    .line 170
    :cond_0
    :try_start_1
    aget-object v4, p2, v2

    invoke-direct {p0, v4}, Lcom/android/launcher4/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 171
    iget-object v4, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/launcher4/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 177
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    const/4 v4, 0x0

    goto :goto_1

    .line 169
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    .end local v3    # "numValues":I
    :catchall_0
    move-exception v4

    .line 177
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher4/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    .local v0, "args":Lcom/android/launcher4/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 189
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 192
    :cond_0
    return v1
.end method

.method public generateNewItemId()J
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewScreenId()J
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->generateNewScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher4/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    .local v0, "args":Lcom/android/launcher4/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.dir/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.item/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 148
    new-instance v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher4/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 150
    .local v0, "args":Lcom/android/launcher4/LauncherProvider$SqlArguments;
    iget-object v5, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 151
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/launcher4/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 152
    iget-object v5, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5, v1, v6, v4, p2}, Lcom/android/launcher4/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 153
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    .line 158
    :goto_0
    return-object v4

    .line 155
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 158
    goto :goto_0
.end method

.method public declared-synchronized justLoadedOldDb()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 240
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "spKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 243
    .local v2, "sp":Landroid/content/SharedPreferences;
    sget-boolean v4, Lcom/android/launcher4/LauncherProvider;->sJustLoadedFromOldDb:Z

    if-nez v4, :cond_1

    .line 245
    .local v1, "loadedOldDb":Z
    :goto_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher4/LauncherProvider;->sJustLoadedFromOldDb:Z

    .line 246
    const-string v4, "UPGRADED_FROM_OLD_DATABASE"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "UPGRADED_FROM_OLD_DATABASE"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const/4 v1, 0x1

    .line 253
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    monitor-exit p0

    return v1

    .line 243
    .end local v1    # "loadedOldDb":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "spKey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary(I)V
    .locals 6
    .param p1, "origWorkspaceResId"    # I

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "spKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 263
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "EMPTY_DATABASE_CREATED"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    move v3, p1

    .line 267
    .local v3, "workspaceResId":I
    if-nez v3, :cond_0

    .line 268
    const-string v4, "DEFAULT_WORKSPACE_RESOURCE_ID"

    const v5, 0x7f060001

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 272
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "EMPTY_DATABASE_CREATED"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    if-eqz p1, :cond_1

    .line 275
    const-string v4, "DEFAULT_WORKSPACE_RESOURCE_ID"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    :cond_1
    iget-object v4, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    iget-object v5, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->access$1(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 279
    iget-object v4, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-static {v4}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->access$2(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;)V

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "workspaceResId":I
    :cond_2
    monitor-exit p0

    return-void

    .line 260
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spKey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    .line 103
    invoke-static {p0}, Lcom/android/launcher4/LauncherAppState;->setLauncherProvider(Lcom/android/launcher4/LauncherProvider;)V

    .line 104
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 121
    new-instance v8, Lcom/android/launcher4/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher4/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 122
    .local v8, "args":Lcom/android/launcher4/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 123
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/android/launcher4/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 126
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/android/launcher4/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/launcher4/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 127
    .local v9, "result":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 129
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher4/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    .local v0, "args":Lcom/android/launcher4/LauncherProvider$SqlArguments;
    invoke-direct {p0, p2}, Lcom/android/launcher4/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 200
    iget-object v3, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 201
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher4/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 204
    :cond_0
    return v1
.end method

.method public updateMaxItemId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->updateMaxItemId(J)V

    .line 224
    return-void
.end method

.method public updateMaxScreenId(J)V
    .locals 1
    .param p1, "maxScreenId"    # J

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/launcher4/LauncherProvider;->mOpenHelper:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->updateMaxScreenId(J)V

    .line 234
    return-void
.end method
