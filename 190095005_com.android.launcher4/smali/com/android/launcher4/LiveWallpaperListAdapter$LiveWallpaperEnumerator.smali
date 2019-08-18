.class Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;
.super Landroid/os/AsyncTask;
.source "LiveWallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/LiveWallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveWallpaperEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;",
        "Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWallpaperPosition:I

.field final synthetic this$0:Lcom/android/launcher4/LiveWallpaperListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/LiveWallpaperListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/launcher4/LiveWallpaperListAdapter;

    .line 137
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    .line 140
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v8, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 146
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    aget-object v3, p1, v8

    .line 148
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator$1;

    invoke-direct {v8, p0, v4}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator$1;-><init>(Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 181
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->publishProgress([Ljava/lang/Object;)V

    .line 183
    const/4 v8, 0x0

    return-object v8

    .line 161
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 162
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .line 164
    .local v1, "info":Landroid/app/WallpaperInfo;
    :try_start_0
    new-instance v1, Landroid/app/WallpaperInfo;

    .end local v1    # "info":Landroid/app/WallpaperInfo;
    iget-object v9, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9, v5}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    .restart local v1    # "info":Landroid/app/WallpaperInfo;
    invoke-virtual {v1, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 175
    .local v6, "thumb":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.service.wallpaper.WallpaperService"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance v7, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;

    invoke-direct {v7, v6, v1, v2}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;-><init>(Landroid/graphics/drawable/Drawable;Landroid/app/WallpaperInfo;Landroid/content/Intent;)V

    .line 178
    .local v7, "wallpaper":Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    .end local v1    # "info":Landroid/app/WallpaperInfo;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v6    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v7    # "wallpaper":Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "LiveWallpaperListAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Skipping wallpaper "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 168
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "LiveWallpaperListAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Skipping wallpaper "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)V
    .locals 5
    .param p1, "infos"    # [Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;

    .prologue
    .line 188
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 201
    :goto_1
    return-void

    .line 188
    :cond_0
    aget-object v0, p1, v1

    .line 189
    .local v0, "info":Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
    if-nez v0, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/launcher4/LiveWallpaperListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher4/LiveWallpaperListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 193
    :cond_1
    invoke-static {v0}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->access$0(Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 194
    iget v3, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    iget-object v4, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/launcher4/LiveWallpaperListAdapter;

    invoke-static {v4}, Lcom/android/launcher4/LiveWallpaperListAdapter;->access$1(Lcom/android/launcher4/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 195
    iget-object v3, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/launcher4/LiveWallpaperListAdapter;

    invoke-static {v3}, Lcom/android/launcher4/LiveWallpaperListAdapter;->access$1(Lcom/android/launcher4/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    invoke-interface {v3, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_2
    iget v3, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/launcher4/LiveWallpaperListAdapter;

    invoke-static {v3}, Lcom/android/launcher4/LiveWallpaperListAdapter;->access$1(Lcom/android/launcher4/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->onProgressUpdate([Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)V

    return-void
.end method
