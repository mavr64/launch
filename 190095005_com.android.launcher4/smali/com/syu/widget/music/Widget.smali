.class public abstract Lcom/syu/widget/music/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# static fields
.field protected static clazzs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/syu/widget/music/WidgetProvider;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/syu/widget/music/Widget;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static mWidgets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/syu/widget/music/Widget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected id:I

.field protected layoutId:I

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private refresh:Ljava/lang/Runnable;

.field protected res:Landroid/content/res/Resources;

.field protected widgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/syu/widget/music/Widget;->mWidgets:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sput-object v0, Lcom/syu/widget/music/Widget;->clazzs:Ljava/util/HashMap;

    .line 46
    sget-object v0, Lcom/syu/widget/music/Widget;->clazzs:Ljava/util/HashMap;

    const-class v1, Lcom/syu/widget/music/DateMusicProvider;

    const-class v2, Lcom/syu/widget/music/DateMusicWidget;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/syu/widget/music/Widget;->clazzs:Ljava/util/HashMap;

    const-class v1, Lcom/syu/widget/music/DateTimeProvider1;

    const-class v2, Lcom/syu/widget/music/DateTimeWidget1;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/syu/widget/music/Widget;->clazzs:Ljava/util/HashMap;

    const-class v1, Lcom/syu/widget/music/DateNaviProvider;

    const-class v2, Lcom/syu/widget/music/DateNaviWidget;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/syu/widget/music/Widget;->res:Landroid/content/res/Resources;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/widget/music/Widget;->layoutId:I

    .line 39
    iput-object v1, p0, Lcom/syu/widget/music/Widget;->widgetManager:Landroid/appwidget/AppWidgetManager;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/syu/widget/music/Widget;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/syu/widget/music/Widget$1;

    invoke-direct {v0, p0}, Lcom/syu/widget/music/Widget$1;-><init>(Lcom/syu/widget/music/Widget;)V

    iput-object v0, p0, Lcom/syu/widget/music/Widget;->refresh:Ljava/lang/Runnable;

    .line 113
    iput-object p1, p0, Lcom/syu/widget/music/Widget;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/syu/widget/music/Widget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/widget/music/Widget;->widgetManager:Landroid/appwidget/AppWidgetManager;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/widget/music/Widget;->res:Landroid/content/res/Resources;

    .line 116
    iput p2, p0, Lcom/syu/widget/music/Widget;->id:I

    .line 117
    invoke-virtual {p0}, Lcom/syu/widget/music/Widget;->getLayoutId()V

    .line 118
    invoke-virtual {p0}, Lcom/syu/widget/music/Widget;->add()V

    .line 119
    return-void
.end method

.method public static check(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/appwidget/AppWidgetManager;

    .prologue
    const/4 v9, 0x0

    .line 72
    sget-object v7, Lcom/syu/widget/music/Widget;->clazzs:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 73
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<+Lcom/syu/widget/music/WidgetProvider;>;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 89
    return-void

    .line 74
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 75
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 76
    .local v5, "ids":[I
    if-eqz v5, :cond_0

    array-length v7, v5

    if-eqz v7, :cond_0

    .line 78
    array-length v10, v5

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_0

    aget v4, v5, v8

    .line 79
    .local v4, "id":I
    invoke-static {v4}, Lcom/syu/widget/music/Widget;->getWidget(I)Lcom/syu/widget/music/Widget;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 78
    :goto_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 81
    :cond_2
    :try_start_0
    sget-object v7, Lcom/syu/widget/music/Widget;->clazzs:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 82
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v7, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v7, v11

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 83
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v7, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getWidget(I)Lcom/syu/widget/music/Widget;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 62
    sget-object v0, Lcom/syu/widget/music/Widget;->mWidgets:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/widget/music/Widget;

    return-object v0
.end method

.method public static update(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 94
    .local v4, "manager":Landroid/appwidget/AppWidgetManager;
    sget-object v6, Lcom/syu/widget/music/Widget;->clazzs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 95
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<+Lcom/syu/widget/music/WidgetProvider;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    return-void

    .line 96
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 97
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 98
    .local v2, "ids":[I
    if-eqz v2, :cond_0

    array-length v6, v2

    if-eqz v6, :cond_0

    .line 100
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget v1, v2, v6

    .line 101
    .local v1, "id":I
    invoke-static {v1}, Lcom/syu/widget/music/Widget;->getWidget(I)Lcom/syu/widget/music/Widget;

    move-result-object v5

    .line 102
    .local v5, "widget":Lcom/syu/widget/music/Widget;
    if-eqz v5, :cond_2

    .line 103
    invoke-virtual {v5}, Lcom/syu/widget/music/Widget;->update()V

    .line 100
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected add()V
    .locals 3

    .prologue
    .line 127
    sget-object v1, Lcom/syu/widget/music/Widget;->mWidgets:Landroid/util/SparseArray;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/syu/widget/music/Widget;->mWidgets:Landroid/util/SparseArray;

    iget v2, p0, Lcom/syu/widget/music/Widget;->id:I

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    monitor-exit v1

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method abstract addLisenter(Landroid/widget/RemoteViews;)V
.end method

.method public delete()V
    .locals 3

    .prologue
    .line 133
    sget-object v1, Lcom/syu/widget/music/Widget;->mWidgets:Landroid/util/SparseArray;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/syu/widget/music/Widget;->mWidgets:Landroid/util/SparseArray;

    iget v2, p0, Lcom/syu/widget/music/Widget;->id:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 133
    monitor-exit v1

    .line 136
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getId(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v0, "id"

    invoke-virtual {p0, p1, v0}, Lcom/syu/widget/music/Widget;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/syu/widget/music/Widget;->res:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/syu/widget/music/Widget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "layout"

    invoke-virtual {p0, p1, v0}, Lcom/syu/widget/music/Widget;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method abstract getLayoutId()V
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/syu/widget/music/Widget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "views":Landroid/widget/RemoteViews;
    iget v1, p0, Lcom/syu/widget/music/Widget;->layoutId:I

    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "views":Landroid/widget/RemoteViews;
    iget-object v1, p0, Lcom/syu/widget/music/Widget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/syu/widget/music/Widget;->layoutId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 142
    .restart local v0    # "views":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lcom/syu/widget/music/Widget;->updateViews(Landroid/widget/RemoteViews;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/syu/widget/music/Widget;->addLisenter(Landroid/widget/RemoteViews;)V

    .line 147
    :cond_0
    return-object v0
.end method

.method public getRemoteViews(I)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "layoutId"    # I

    .prologue
    .line 177
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/syu/widget/music/Widget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bitmapName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, Lcom/syu/widget/music/Widget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 182
    iget-object v1, p0, Lcom/syu/widget/music/Widget;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 183
    .local v0, "fos":Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 184
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 185
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 186
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/syu/widget/music/Widget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/widget/music/Widget;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lcom/syu/widget/music/Widget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/widget/music/Widget;->refresh:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method public update(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 151
    iget v0, p0, Lcom/syu/widget/music/Widget;->id:I

    if-eqz v0, :cond_0

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/syu/widget/music/Widget;->widgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/syu/widget/music/Widget;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 158
    :cond_0
    return-void
.end method

.method abstract updateViews(Landroid/widget/RemoteViews;)V
.end method
