.class Lcom/android/launcher4/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mMaxItemId:J

.field private mMaxScreenId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    .line 305
    const-string v0, "launcher4.db"

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 301
    iput-wide v4, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 302
    iput-wide v4, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 306
    iput-object p1, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 307
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    sget v1, Lcom/android/launcher4/Launcher;->APPWIDGET_HOST_ID:I

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 311
    iget-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 314
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 317
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;J)J
    .locals 3

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->upgradeLauncherDb_permuteScreens(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 1

    .prologue
    .line 1008
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->setFlagJustLoadedOldDb()V

    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "a"    # Landroid/content/res/TypedArray;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1183
    const-wide/16 v8, -0x1

    .line 1185
    .local v8, "id":J
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1186
    .local v11, "packageName":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1190
    .local v4, "className":Ljava/lang/String;
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v11, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    .local v5, "cn":Landroid/content/ComponentName;
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1198
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v8

    .line 1199
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1200
    const/high16 v13, 0x10200000

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1202
    const-string v13, "intent"

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v13, "title"

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v13, "itemType"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const-string v13, "spanX"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1206
    const-string v13, "spanY"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1207
    const-string v13, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1208
    const-string v13, "favorites"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v13, v14, v2}, Lcom/android/launcher4/LauncherProvider;->access$0(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gez v13, :cond_0

    .line 1209
    const-wide/16 v14, -0x1

    .line 1215
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    :goto_1
    return-wide v14

    .line 1192
    :catch_0
    move-exception v10

    .line 1194
    .local v10, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    .line 1193
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1195
    .local v12, "packages":[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-direct {v5, v13, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .restart local v5    # "cn":Landroid/content/ComponentName;
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .restart local v7    # "info":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_0

    .line 1211
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "packages":[Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1212
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "Launcher.LauncherProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Unable to add favorite: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1213
    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1212
    invoke-static {v13, v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-wide v14, v8

    .line 1215
    goto :goto_1
.end method

.method private addAppWidget(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 18
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "type"    # I
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p5, "values"    # Landroid/content/ContentValues;
    .param p6, "a"    # Landroid/content/res/TypedArray;
    .param p7, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1272
    const/4 v1, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1273
    .local v14, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1275
    .local v9, "className":Ljava/lang/String;
    if-eqz v14, :cond_0

    if-nez v9, :cond_1

    .line 1276
    :cond_0
    const/4 v1, 0x0

    .line 1325
    :goto_0
    return v1

    .line 1279
    :cond_1
    const/4 v12, 0x1

    .line 1280
    .local v12, "hasPackage":Z
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v14, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    .local v4, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :goto_1
    if-eqz v12, :cond_6

    .line 1295
    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1296
    .local v5, "spanX":I
    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 1299
    .local v6, "spanY":I
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1300
    .local v7, "extras":Landroid/os/Bundle;
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    .line 1301
    .local v17, "widgetDepth":I
    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p3

    const/4 v1, 0x3

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 1302
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 1301
    move/from16 v0, v17

    if-gt v1, v0, :cond_3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1322
    invoke-direct/range {v1 .. v7}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    .line 1283
    .end local v5    # "spanX":I
    .end local v6    # "spanY":I
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v17    # "widgetDepth":I
    :catch_0
    move-exception v10

    .line 1285
    .local v10, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    .line 1284
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1286
    .local v15, "packages":[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    aget-object v1, v15, v1

    invoke-direct {v4, v1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    .restart local v4    # "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1289
    :catch_1
    move-exception v11

    .line 1290
    .local v11, "e1":Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_1

    .line 1303
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "e1":Ljava/lang/Exception;
    .end local v15    # "packages":[Ljava/lang/String;
    .restart local v5    # "spanX":I
    .restart local v6    # "spanY":I
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v17    # "widgetDepth":I
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    .line 1307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher4/R$styleable;->Extra:[I

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1308
    .local v8, "ar":Landroid/content/res/TypedArray;
    const-string v1, "extra"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1309
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1310
    .local v13, "key":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1311
    .local v16, "value":Ljava/lang/String;
    if-eqz v13, :cond_4

    if-eqz v16, :cond_4

    .line 1312
    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 1314
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Widget extras must have a key and value"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1317
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Widgets can contain only extras"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1325
    .end local v5    # "spanX":I
    .end local v6    # "spanY":I
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v8    # "ar":Landroid/content/res/TypedArray;
    .end local v17    # "widgetDepth":I
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1329
    const/4 v0, 0x0

    .line 1330
    .local v0, "allocatedAppWidgets":Z
    iget-object v5, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1333
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1335
    .local v1, "appWidgetId":I
    const-string v5, "itemType"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1336
    const-string v5, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1337
    const-string v5, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1339
    const-string v5, "appWidgetProvider"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v5, "_id"

    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1341
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-static {p0, p1, v5, v6, p2}, Lcom/android/launcher4/LauncherProvider;->access$0(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1343
    const/4 v0, 0x1

    .line 1346
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    .line 1349
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1350
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1352
    invoke-virtual {v4, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1353
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    iget-object v5, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    .end local v1    # "appWidgetId":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v0

    .line 1356
    :catch_0
    move-exception v3

    .line 1357
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x2

    .line 1263
    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    .line 1264
    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    .line 1263
    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    .local v3, "cn":Landroid/content/ComponentName;
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    .line 1219
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1220
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    .line 1223
    .local v0, "id":J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1224
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, p2}, Lcom/android/launcher4/LauncherProvider;->access$0(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1225
    const-wide/16 v0, -0x1

    .line 1227
    .end local v0    # "id":J
    :cond_0
    return-wide v0
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1258
    invoke-direct {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    .line 1259
    .local v3, "cn":Landroid/content/ComponentName;
    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1365
    iget-object v8, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1367
    .local v5, "r":Landroid/content/res/Resources;
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1368
    .local v1, "iconResId":I
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1371
    .local v6, "titleResId":I
    const/4 v7, 0x0

    .line 1373
    .local v7, "uri":Ljava/lang/String;
    const/16 v8, 0xa

    :try_start_0
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1374
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1380
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    .line 1381
    :cond_0
    const-string v8, "Launcher.LauncherProvider"

    const-string v9, "Shortcut is missing title or icon resource ID"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const-wide/16 v2, -0x1

    .line 1400
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-wide v2

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v8, "Launcher.LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Shortcut has malformed uri: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 1385
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v2

    .line 1386
    .local v2, "id":J
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1387
    const-string v8, "intent"

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v8, "title"

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v8, "itemType"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1390
    const-string v8, "spanX"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1391
    const-string v8, "spanY"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    const-string v8, "iconType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    const-string v8, "iconPackage"

    iget-object v9, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v8, "iconResource"

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v8, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1397
    const-string v8, "favorites"

    const/4 v9, 0x0

    invoke-static {p0, p1, v8, v9, p2}, Lcom/android/launcher4/LauncherProvider;->access$0(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 1398
    const-wide/16 v2, -0x1

    goto/16 :goto_0
.end method

.method private addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 396
    const-string v0, "CREATE TABLE workspaceScreens (_id INTEGER,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 987
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    .line 988
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 992
    :cond_1
    if-eq v0, v2, :cond_2

    .line 993
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 996
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 997
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected start tag: found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 998
    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 997
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1000
    :cond_3
    return-void
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;Z)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cb"    # Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;
    .param p4, "deleteRows"    # Z

    .prologue
    .line 434
    const/4 v6, 0x0

    .line 436
    .local v6, "converted":Z
    iget-object v1, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 440
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 446
    :goto_0
    if-eqz v7, :cond_1

    .line 448
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 449
    invoke-direct {p0, p1, v7, p3}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v6, 0x1

    .line 450
    :goto_1
    if-eqz v6, :cond_0

    if-eqz p4, :cond_0

    .line 451
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_1
    if-eqz v6, :cond_2

    .line 462
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 469
    :cond_2
    return v6

    .line 449
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 454
    :catchall_0
    move-exception v1

    .line 455
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 456
    throw v1

    .line 441
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    .line 902
    .local v13, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v4, 0x3

    new-array v14, v4, [I

    fill-array-data v14, :array_0

    .line 908
    .local v14, "bindSources":[I
    const-string v4, "itemType"

    invoke-static {v4, v14}, Lcom/android/launcher4/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    .line 910
    .local v7, "selectWhere":Ljava/lang/String;
    const/4 v15, 0x0

    .line 912
    .local v15, "c":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 915
    :try_start_0
    const-string v5, "favorites"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "itemType"

    aput-object v8, v6, v4

    .line 916
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 915
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 920
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 921
    .local v21, "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 969
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 974
    if-eqz v15, :cond_2

    .line 975
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 980
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 982
    return-void

    .line 922
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 923
    .local v18, "favoriteId":J
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    .line 927
    .local v17, "favoriteType":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v12

    .line 933
    .local v12, "appWidgetId":I
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 934
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v4, "appWidgetId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const/16 v4, 0x3e9

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    .line 939
    const-string v4, "spanX"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    const-string v4, "spanY"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 947
    .local v20, "updateWhere":Ljava/lang/String;
    const-string v4, "favorites"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 949
    const/16 v4, 0x3e8

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 952
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.alarmclock"

    .line 953
    const-string v6, "com.android.alarmclock.AnalogAppWidgetProvider"

    .line 952
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 964
    .end local v12    # "appWidgetId":I
    .end local v20    # "updateWhere":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 965
    .local v16, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 970
    .end local v16    # "ex":Ljava/lang/RuntimeException;
    .end local v17    # "favoriteType":I
    .end local v18    # "favoriteId":J
    .end local v21    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v16

    .line 971
    .local v16, "ex":Landroid/database/SQLException;
    :try_start_4
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem while allocating appWidgetIds for existing widgets"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 973
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 974
    if-eqz v15, :cond_2

    .line 975
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 942
    .end local v16    # "ex":Landroid/database/SQLException;
    .restart local v12    # "appWidgetId":I
    .restart local v17    # "favoriteType":I
    .restart local v18    # "favoriteId":J
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_5
    const-string v4, "spanX"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    const-string v4, "spanY"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 972
    .end local v12    # "appWidgetId":I
    .end local v17    # "favoriteType":I
    .end local v18    # "favoriteId":J
    .end local v21    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    .line 973
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 974
    if-eqz v15, :cond_5

    .line 975
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 977
    :cond_5
    throw v4

    .line 954
    .restart local v12    # "appWidgetId":I
    .restart local v17    # "favoriteType":I
    .restart local v18    # "favoriteId":J
    .restart local v20    # "updateWhere":Ljava/lang/String;
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_6
    const/16 v4, 0x3ea

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    .line 957
    :try_start_6
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.camera"

    .line 958
    const-string v6, "com.android.camera.PhotoAppWidgetProvider"

    .line 957
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    goto/16 :goto_0

    .line 959
    :cond_7
    const/16 v4, 0x3e9

    move/from16 v0, v17

    if-ne v0, v4, :cond_0

    .line 962
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    .line 961
    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 902
    nop

    :array_0
    .array-data 4
        0x3e8
        0x3ea
        0x3e9
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;)I
    .locals 30
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "cb"    # Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;

    .prologue
    .line 473
    const-string v26, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 474
    .local v16, "idIndex":I
    const-string v26, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 475
    .local v17, "intentIndex":I
    const-string v26, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 476
    .local v22, "titleIndex":I
    const-string v26, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 477
    .local v15, "iconTypeIndex":I
    const-string v26, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 478
    .local v12, "iconIndex":I
    const-string v26, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 479
    .local v13, "iconPackageIndex":I
    const-string v26, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 480
    .local v14, "iconResourceIndex":I
    const-string v26, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 481
    .local v8, "containerIndex":I
    const-string v26, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 482
    .local v18, "itemTypeIndex":I
    const-string v26, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 483
    .local v21, "screenIndex":I
    const-string v26, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 484
    .local v6, "cellXIndex":I
    const-string v26, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 485
    .local v7, "cellYIndex":I
    const-string v26, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 486
    .local v24, "uriIndex":I
    const-string v26, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 488
    .local v9, "displayModeIndex":I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    .line 489
    .local v20, "rows":[Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 490
    .local v10, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-nez v26, :cond_1

    .line 513
    const/16 v23, 0x0

    .line 514
    .local v23, "total":I
    if-lez v10, :cond_0

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 517
    :try_start_0
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v19, v0

    .line 518
    .local v19, "numValues":I
    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v19

    if-lt v10, v0, :cond_3

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v19    # "numValues":I
    :cond_0
    move/from16 v26, v23

    .line 531
    :goto_2
    return v26

    .line 491
    .end local v23    # "total":I
    :cond_1
    new-instance v25, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/content/ContentValues;-><init>(I)V

    .line 492
    .local v25, "values":Landroid/content/ContentValues;
    const-string v26, "_id"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 493
    const-string v26, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v26, "title"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v26, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v26, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 497
    const-string v26, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v26, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v26, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    const-string v26, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v26, "appWidgetId"

    const/16 v27, -0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v26, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    const-string v26, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v26, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v26, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v26, "displayMode"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    if-eqz p3, :cond_2

    .line 508
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;->onRow(Landroid/content/ContentValues;)V

    .line 510
    :cond_2
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    aput-object v25, v20, v10

    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_0

    .line 519
    .end local v25    # "values":Landroid/content/ContentValues;
    .restart local v19    # "numValues":I
    .restart local v23    # "total":I
    :cond_3
    :try_start_1
    const-string v26, "favorites"

    const/16 v27, 0x0

    aget-object v28, v20, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher4/LauncherProvider;->access$0(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-gez v26, :cond_4

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 520
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 522
    :cond_4
    add-int/lit8 v23, v23, 0x1

    .line 518
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 526
    .end local v19    # "numValues":I
    :catchall_0
    move-exception v26

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    throw v26
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1244
    iget-object v5, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1245
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 1246
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_1

    move-object v2, v6

    .line 1254
    :cond_0
    :goto_0
    return-object v2

    .line 1247
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1248
    .local v3, "providerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_2

    move-object v2, v6

    .line 1254
    goto :goto_0

    .line 1249
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1250
    .local v2, "provider":Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1248
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 1233
    iget-object v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 1234
    .local v1, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1235
    .local v0, "searchComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 1236
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 840
    const-string v4, "SELECT MAX(_id) FROM favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 843
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 844
    .local v1, "maxIdIndex":I
    const-wide/16 v2, -0x1

    .line 845
    .local v2, "id":J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 846
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 848
    :cond_0
    if-eqz v0, :cond_1

    .line 849
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 852
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 853
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max item id"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 856
    :cond_2
    return-wide v2
.end method

.method private initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 877
    const-string v4, "SELECT MAX(_id) FROM workspaceScreens"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 880
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 881
    .local v1, "maxIdIndex":I
    const-wide/16 v2, -0x1

    .line 882
    .local v2, "id":J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 883
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 885
    :cond_0
    if-eqz v0, :cond_1

    .line 886
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 889
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 890
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max screen id"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :cond_2
    return-wide v2
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 40
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "workspaceResourceId"    # I

    .prologue
    .line 1009
    new-instance v9, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v9, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1010
    .local v9, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1015
    .local v6, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1016
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v30, 0x0

    .line 1018
    .local v30, "i":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 1019
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 1020
    .local v12, "attrs":Landroid/util/AttributeSet;
    const-string v4, "favorites"

    invoke-static {v11, v4}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1022
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    .line 1025
    .local v21, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v4, 0x3

    if-ne v13, v4, :cond_1

    .line 1026
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-ne v13, v4, :cond_4

    .line 1174
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .end local v13    # "type":I
    .end local v21    # "depth":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v14, -0x1

    cmp-long v4, v4, v14

    if-nez v4, :cond_3

    .line 1175
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1178
    :cond_3
    return v30

    .line 1028
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v13    # "type":I
    .restart local v21    # "depth":I
    :cond_4
    const/4 v4, 0x2

    if-ne v13, v4, :cond_0

    .line 1032
    const/16 v20, 0x0

    .line 1033
    .local v20, "added":Z
    :try_start_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v31

    .line 1035
    .local v31, "name":Ljava/lang/String;
    const-string v4, "include"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher4/R$styleable;->Include:[I

    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1038
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v34

    .line 1043
    .local v34, "resId":I
    if-eqz v34, :cond_5

    move/from16 v0, v34

    move/from16 v1, p2

    if-eq v0, v1, :cond_5

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v4

    add-int v30, v30, v4

    .line 1046
    const/16 v20, 0x0

    .line 1047
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1052
    :goto_2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1165
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .end local v13    # "type":I
    .end local v20    # "added":Z
    .end local v21    # "depth":I
    .end local v31    # "name":Ljava/lang/String;
    .end local v34    # "resId":I
    :catch_0
    move-exception v24

    .line 1166
    .local v24, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Got exception parsing favorites."

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1049
    .end local v24    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v13    # "type":I
    .restart local v20    # "added":Z
    .restart local v21    # "depth":I
    .restart local v31    # "name":Ljava/lang/String;
    .restart local v34    # "resId":I
    :cond_5
    :try_start_2
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Skipping <include workspace=0x%08x>"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v14

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1167
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .end local v13    # "type":I
    .end local v20    # "added":Z
    .end local v21    # "depth":I
    .end local v31    # "name":Ljava/lang/String;
    .end local v34    # "resId":I
    :catch_1
    move-exception v24

    .line 1168
    .local v24, "e":Ljava/io/IOException;
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Got exception parsing favorites."

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1059
    .end local v24    # "e":Ljava/io/IOException;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v13    # "type":I
    .restart local v20    # "added":Z
    .restart local v21    # "depth":I
    .restart local v31    # "name":Ljava/lang/String;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher4/R$styleable;->Favorite:[I

    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1061
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    const-wide/16 v22, -0x64

    .line 1062
    .local v22, "container":J
    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1063
    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 1066
    :cond_7
    const/4 v4, 0x3

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1067
    .local v35, "screen":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1068
    .local v38, "x":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1070
    .local v39, "y":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1071
    const-string v4, "container"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1072
    const-string v4, "screen"

    move-object/from16 v0, v35

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v4, "cellX"

    move-object/from16 v0, v38

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v4, "cellY"

    move-object/from16 v0, v39

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v4, "favorite"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1088
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v32

    .line 1089
    .local v32, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_a

    const/16 v20, 0x1

    .line 1162
    .end local v32    # "id":J
    :cond_8
    :goto_3
    if-eqz v20, :cond_9

    add-int/lit8 v30, v30, 0x1

    .line 1163
    :cond_9
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1169
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .end local v13    # "type":I
    .end local v20    # "added":Z
    .end local v21    # "depth":I
    .end local v22    # "container":J
    .end local v31    # "name":Ljava/lang/String;
    .end local v35    # "screen":Ljava/lang/String;
    .end local v38    # "x":Ljava/lang/String;
    .end local v39    # "y":Ljava/lang/String;
    :catch_2
    move-exception v24

    .line 1170
    .local v24, "e":Ljava/lang/RuntimeException;
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Got exception parsing favorites."

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1089
    .end local v24    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v13    # "type":I
    .restart local v20    # "added":Z
    .restart local v21    # "depth":I
    .restart local v22    # "container":J
    .restart local v31    # "name":Ljava/lang/String;
    .restart local v32    # "id":J
    .restart local v35    # "screen":Ljava/lang/String;
    .restart local v38    # "x":Ljava/lang/String;
    .restart local v39    # "y":Ljava/lang/String;
    :cond_a
    const/16 v20, 0x0

    goto :goto_3

    .line 1090
    .end local v32    # "id":J
    :cond_b
    :try_start_4
    const-string v4, "search"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1091
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v20

    .line 1092
    goto :goto_3

    :cond_c
    const-string v4, "clock"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1093
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v20

    .line 1094
    goto :goto_3

    :cond_d
    const-string v4, "appwidget"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v10, p0

    move-object/from16 v14, p1

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 1095
    invoke-direct/range {v10 .. v17}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v20

    .line 1096
    goto :goto_3

    :cond_e
    const-string v4, "shortcut"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1097
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v32

    .line 1098
    .restart local v32    # "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_f

    const/16 v20, 0x1

    .line 1099
    :goto_4
    goto :goto_3

    .line 1098
    :cond_f
    const/16 v20, 0x0

    goto :goto_4

    .line 1099
    .end local v32    # "id":J
    :cond_10
    const-string v4, "folder"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1101
    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v37

    .line 1102
    .local v37, "titleResId":I
    const/4 v4, -0x1

    move/from16 v0, v37

    if-eq v0, v4, :cond_13

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1107
    .local v36, "title":Ljava/lang/String;
    :goto_5
    const-string v4, "title"

    move-object/from16 v0, v36

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v26

    .line 1109
    .local v26, "folderId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_14

    const/16 v20, 0x1

    .line 1111
    :goto_6
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v28, "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v25

    .line 1114
    .local v25, "folderDepth":I
    :cond_11
    :goto_7
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v4, 0x3

    if-ne v13, v4, :cond_15

    .line 1115
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 1114
    move/from16 v0, v25

    if-gt v4, v0, :cond_15

    .line 1153
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_8

    .line 1155
    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/LauncherProvider;->access$2(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1156
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 1157
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/launcher4/LauncherProvider;->access$2(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1159
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1105
    .end local v25    # "folderDepth":I
    .end local v26    # "folderId":J
    .end local v28    # "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v36    # "title":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "title":Ljava/lang/String;
    goto :goto_5

    .line 1109
    .restart local v26    # "folderId":J
    :cond_14
    const/16 v20, 0x0

    goto :goto_6

    .line 1116
    .restart local v25    # "folderDepth":I
    .restart local v28    # "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_15
    const/4 v4, 0x2

    if-ne v13, v4, :cond_11

    .line 1119
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 1121
    .local v29, "folder_item_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1122
    sget-object v5, Lcom/android/launcher4/R$styleable;->Favorite:[I

    .line 1121
    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1123
    .local v17, "ar":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1124
    const-string v4, "container"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1133
    const-string v4, "favorite"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_17

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 1135
    invoke-direct/range {v14 .. v19}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v32

    .line 1136
    .restart local v32    # "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_16

    .line 1137
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_16
    :goto_8
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_7

    .line 1139
    .end local v32    # "id":J
    :cond_17
    const-string v4, "shortcut"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_18

    .line 1140
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v32

    .line 1141
    .restart local v32    # "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_16

    .line 1142
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1145
    .end local v32    # "id":J
    :cond_18
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Folders can contain only shortcuts"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 767
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, "c":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 773
    .local v10, "update":Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 774
    .local v9, "logged":Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 777
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    .line 778
    const/4 v12, 0x0

    .line 777
    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 780
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 781
    .local v8, "idIndex":I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 783
    .local v5, "iconIndex":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 808
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 813
    if-eqz v10, :cond_1

    .line 814
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 816
    :cond_1
    if-eqz v1, :cond_2

    .line 817
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 820
    .end local v5    # "iconIndex":I
    .end local v8    # "idIndex":I
    :cond_2
    :goto_1
    return-void

    .line 784
    .restart local v5    # "iconIndex":I
    .restart local v8    # "idIndex":I
    :cond_3
    :try_start_1
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 785
    .local v6, "id":J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 788
    .local v2, "data":[B
    const/4 v11, 0x0

    :try_start_2
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 789
    iget-object v12, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 787
    invoke-static {v11, v12}, Lcom/android/launcher4/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 790
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 791
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 792
    invoke-static {v0}, Lcom/android/launcher4/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 793
    if-eqz v2, :cond_4

    .line 794
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 795
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 797
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 799
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 800
    .local v3, "e":Ljava/lang/Exception;
    if-nez v9, :cond_5

    .line 801
    :try_start_3
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed normalizing icon "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .line 803
    :cond_5
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Also failed normalizing icon "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 809
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "iconIndex":I
    .end local v6    # "id":J
    .end local v8    # "idIndex":I
    :catch_1
    move-exception v4

    .line 810
    .local v4, "ex":Landroid/database/SQLException;
    :try_start_4
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 812
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 813
    if-eqz v10, :cond_6

    .line 814
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 816
    :cond_6
    if-eqz v1, :cond_2

    .line 817
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 811
    .end local v4    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v11

    .line 812
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 813
    if-eqz v10, :cond_7

    .line 814
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 816
    :cond_7
    if-eqz v1, :cond_8

    .line 817
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 819
    :cond_8
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher4/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 328
    return-void
.end method

.method private setFlagEmptyDbCreated()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 413
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "spKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 415
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "EMPTY_DATABASE_CREATED"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v3, "UPGRADED_FROM_OLD_DATABASE"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    return-void
.end method

.method private setFlagJustLoadedOldDb()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 404
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "spKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 406
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "UPGRADED_FROM_OLD_DATABASE"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    const-string v3, "EMPTY_DATABASE_CREATED"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 687
    const-string v4, "itemType"

    .line 688
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v8, 0x1

    aput v8, v5, v6

    .line 687
    invoke-static {v4, v5}, Lcom/android/launcher4/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    .line 690
    .local v7, "selectWhere":Ljava/lang/String;
    const/4 v13, 0x0

    .line 691
    .local v13, "c":Landroid/database/Cursor;
    const-string v12, "com.android.contacts.action.QUICK_CONTACT"

    .line 692
    .local v12, "actionQuickContact":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 695
    :try_start_0
    const-string v5, "favorites"

    .line 696
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "intent"

    aput-object v8, v6, v4

    .line 697
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 695
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 698
    if-nez v13, :cond_1

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 758
    if-eqz v13, :cond_0

    .line 759
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 698
    :cond_0
    const/4 v4, 0x0

    .line 763
    :goto_0
    return v4

    .line 702
    :cond_1
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 703
    .local v17, "idIndex":I
    const-string v4, "intent"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 705
    .local v21, "intentIndex":I
    :cond_2
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 758
    if-eqz v13, :cond_3

    .line 759
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 706
    :cond_4
    :try_start_2
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 707
    .local v18, "favoriteId":J
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v22

    .line 708
    .local v22, "intentUri":Ljava/lang/String;
    if-eqz v22, :cond_2

    .line 710
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v20

    .line 711
    .local v20, "intent":Landroid/content/Intent;
    const-string v4, "Home"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 713
    .local v25, "uri":Landroid/net/Uri;
    if-eqz v25, :cond_2

    .line 714
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 715
    .local v14, "data":Ljava/lang/String;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 716
    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 717
    :cond_5
    const-string v4, "content://contacts/people/"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 718
    const-string v4, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 719
    if-eqz v4, :cond_2

    .line 721
    :cond_6
    new-instance v23, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v23, "newIntent":Landroid/content/Intent;
    const v4, 0x10008000

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 730
    const-string v4, "com.android.launcher4.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    const/4 v5, 0x1

    .line 729
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 731
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 737
    .local v26, "values":Landroid/content/ContentValues;
    const-string v4, "intent"

    .line 738
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    .line 737
    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 741
    .local v24, "updateWhere":Ljava/lang/String;
    const-string v4, "favorites"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 744
    .end local v14    # "data":Ljava/lang/String;
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v23    # "newIntent":Landroid/content/Intent;
    .end local v24    # "updateWhere":Ljava/lang/String;
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v26    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v16

    .line 745
    .local v16, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem upgrading shortcut"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 753
    .end local v16    # "ex":Ljava/lang/RuntimeException;
    .end local v17    # "idIndex":I
    .end local v18    # "favoriteId":J
    .end local v21    # "intentIndex":I
    .end local v22    # "intentUri":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 754
    .local v16, "ex":Landroid/database/SQLException;
    :try_start_5
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem while upgrading contacts"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 758
    if-eqz v13, :cond_7

    .line 759
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 755
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 746
    .end local v16    # "ex":Landroid/database/SQLException;
    .restart local v17    # "idIndex":I
    .restart local v18    # "favoriteId":J
    .restart local v21    # "intentIndex":I
    .restart local v22    # "intentUri":Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 747
    .local v15, "e":Ljava/net/URISyntaxException;
    :try_start_6
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem upgrading shortcut"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 756
    .end local v15    # "e":Ljava/net/URISyntaxException;
    .end local v17    # "idIndex":I
    .end local v18    # "favoriteId":J
    .end local v21    # "intentIndex":I
    .end local v22    # "intentUri":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 758
    if-eqz v13, :cond_8

    .line 759
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_8
    throw v4
.end method

.method private upgradeLauncherDb_permuteScreens(J)J
    .locals 5
    .param p1, "screen"    # J

    .prologue
    const-wide/16 v2, 0x2

    .line 424
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 425
    sub-long v0, p1, v2

    .line 427
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3

    add-long/2addr v0, p1

    goto :goto_0
.end method


# virtual methods
.method public generateNewItemId()J
    .locals 4

    .prologue
    .line 828
    iget-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 829
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 832
    iget-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    return-wide v0
.end method

.method public generateNewScreenId()J
    .locals 4

    .prologue
    .line 865
    iget-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 866
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max screen id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 869
    iget-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 334
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 335
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 337
    const-string v2, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 362
    iget-object v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 364
    invoke-direct {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 368
    :cond_0
    new-instance v0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper$1;-><init>(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;)V

    .line 378
    .local v0, "permuteScreensCb":Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 380
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 382
    sget-object v1, Lcom/android/launcher4/LauncherSettings$Favorites;->OLD_CONTENT_URI:Landroid/net/Uri;

    .line 383
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->setFlagEmptyDbCreated()V

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->setFlagJustLoadedOldDb()V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v6, 0xf

    const/4 v4, 0x3

    .line 538
    move v1, p2

    .line 539
    .local v1, "version":I
    if-ge v1, v4, :cond_0

    .line 541
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 544
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    const/4 v1, 0x3

    .line 552
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 556
    :goto_0
    if-ne v1, v4, :cond_0

    .line 557
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 561
    :cond_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 562
    const/4 v1, 0x4

    .line 573
    :cond_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 575
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 577
    :try_start_1
    const-string v2, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 583
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 587
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    const/4 v1, 0x6

    .line 592
    :cond_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 594
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 595
    const/4 v1, 0x7

    .line 598
    :cond_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    .line 602
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 603
    const/16 v1, 0x8

    .line 606
    :cond_4
    const/16 v2, 0x9

    if-ge v1, v2, :cond_6

    .line 609
    iget-wide v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 610
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 614
    :cond_5
    const v2, 0x7f060005

    invoke-direct {p0, p1, v2}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 615
    const/16 v1, 0x9

    .line 621
    :cond_6
    const/16 v2, 0xc

    if-ge v1, v2, :cond_7

    .line 625
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 626
    const/16 v1, 0xc

    .line 629
    :cond_7
    const/16 v2, 0xd

    if-ge v1, v2, :cond_8

    .line 632
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 636
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/launcher4/LauncherProvider;->access$1(Z)V

    .line 638
    invoke-direct {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 639
    const/16 v1, 0xd

    .line 642
    :cond_8
    const/16 v2, 0xe

    if-ge v1, v2, :cond_9

    .line 643
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 646
    :try_start_2
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 649
    const/16 v1, 0xe

    .line 654
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 659
    :cond_9
    :goto_2
    if-ge v1, v6, :cond_a

    .line 660
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 663
    :try_start_3
    const-string v2, "ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 665
    const-string v2, "ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 668
    const/16 v1, 0xf

    .line 673
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 677
    :cond_a
    :goto_3
    if-eq v1, v6, :cond_b

    .line 678
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 680
    const-string v2, "DROP TABLE IF EXISTS workspaceScreens"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 684
    :cond_b
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 550
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 552
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 551
    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 552
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 553
    throw v2

    .line 579
    :catch_1
    move-exception v0

    .line 581
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_5
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 583
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 582
    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    .line 583
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 584
    throw v2

    .line 650
    :catch_2
    move-exception v0

    .line 652
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_6
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 654
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .line 653
    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_2
    move-exception v2

    .line 654
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 655
    throw v2

    .line 669
    :catch_3
    move-exception v0

    .line 671
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_7
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 673
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 672
    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_3
    move-exception v2

    .line 673
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 674
    throw v2
.end method

.method public updateMaxItemId(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 836
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 837
    return-void
.end method

.method public updateMaxScreenId(J)V
    .locals 1
    .param p1, "maxScreenId"    # J

    .prologue
    .line 873
    iput-wide p1, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 874
    return-void
.end method
