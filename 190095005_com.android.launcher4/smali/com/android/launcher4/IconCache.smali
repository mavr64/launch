.class public Lcom/android/launcher4/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher4/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Ljava/util/HashMap;

    .line 58
    const/16 v2, 0x32

    .line 57
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    .line 63
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/app/ActivityManager;

    .line 65
    .local v0, "activityManager":Landroid/app/ActivityManager;
    iput-object p1, p0, Lcom/android/launcher4/IconCache;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    const/16 v1, 0x140

    iput v1, p0, Lcom/android/launcher4/IconCache;->mIconDpi:I

    .line 70
    invoke-direct {p0}, Lcom/android/launcher4/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 71
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/android/launcher4/IconCache$CacheEntry;
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/android/launcher4/IconCache$CacheEntry;"
        }
    .end annotation

    .prologue
    .line 241
    .local p3, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/IconCache$CacheEntry;

    .line 242
    .local v0, "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    if-nez v0, :cond_2

    .line 243
    new-instance v0, Lcom/android/launcher4/IconCache$CacheEntry;

    .end local v0    # "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/launcher4/IconCache$CacheEntry;-><init>(Lcom/android/launcher4/IconCache$CacheEntry;)V

    .line 245
    .restart local v0    # "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    iget-object v2, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {p2}, Lcom/android/launcher4/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 249
    .local v1, "key":Landroid/content/ComponentName;
    if-eqz p3, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher4/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 257
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/launcher4/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 258
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/launcher4/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 262
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 263
    iget-object v3, p0, Lcom/android/launcher4/IconCache;->mContext:Landroid/content/Context;

    .line 262
    invoke-static {v2, v3}, Lcom/android/launcher4/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher4/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 265
    .end local v1    # "key":Landroid/content/ComponentName;
    :cond_2
    return-object v0

    .line 252
    .restart local v1    # "key":Landroid/content/ComponentName;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher4/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher4/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 253
    if-eqz p3, :cond_0

    .line 254
    iget-object v2, v0, Lcom/android/launcher4/IconCache$CacheEntry;->title:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher4/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 132
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 133
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 132
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    return-object v0
.end method

.method private setIcon(Ljava/lang/String;Lcom/android/launcher4/IconCache$CacheEntry;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/launcher4/IconCache$CacheEntry;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/launcher4/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v2}, Lcom/syu/util/CustomIcons;->getIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    .line 226
    .local v1, "resid":I
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/IconCache;->mContext:Landroid/content/Context;

    .line 227
    invoke-static {v2, v3}, Lcom/android/launcher4/Utilities;->createIconBitmap_enlarge(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 233
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 234
    iget-object v3, p2, Lcom/android/launcher4/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 233
    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    iget-object v3, p0, Lcom/android/launcher4/IconCache;->mContext:Landroid/content/Context;

    .line 233
    invoke-static {v2, v3}, Lcom/android/launcher4/Utilities;->createIconBitmap_minify(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 154
    monitor-exit v1

    .line 157
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flushInvalidIcons(Lcom/android/launcher4/DeviceProfile;)V
    .locals 5
    .param p1, "grid"    # Lcom/android/launcher4/DeviceProfile;

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/launcher4/IconCache$CacheEntry;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    monitor-exit v3

    .line 174
    return-void

    .line 167
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/IconCache$CacheEntry;

    .line 168
    .local v0, "e":Lcom/android/launcher4/IconCache$CacheEntry;
    iget-object v2, v0, Lcom/android/launcher4/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v4, p1, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    if-ne v2, v4, :cond_2

    .line 169
    iget-object v2, v0, Lcom/android/launcher4/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v4, p1, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    if-eq v2, v4, :cond_0

    .line 170
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Lcom/android/launcher4/IconCache$CacheEntry;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/launcher4/IconCache$CacheEntry;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAllIcons()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v4, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 270
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v2, "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    monitor-exit v4

    return-object v2

    .line 271
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 272
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/IconCache$CacheEntry;

    .line 273
    .local v1, "e":Lcom/android/launcher4/IconCache$CacheEntry;
    iget-object v5, v1, Lcom/android/launcher4/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "e":Lcom/android/launcher4/IconCache$CacheEntry;
    .end local v2    # "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const/high16 v1, 0x10d0000

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/syu/util/CustomIcons;->getIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v2

    .line 111
    .local v2, "resid":I
    if-lez v2, :cond_0

    .line 112
    iget-object v4, p0, Lcom/android/launcher4/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 127
    :goto_0
    return-object v4

    .line 116
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher4/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 117
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 121
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_1
    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 123
    .local v1, "iconId":I
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 118
    .end local v1    # "iconId":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_1

    .line 127
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 105
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 81
    :try_start_0
    iget v2, p0, Lcom/android/launcher4/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 86
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher4/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0, v1, p2}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    :goto_1
    return-object v2

    .line 93
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 101
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 208
    .local p3, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 209
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 210
    :cond_0
    :try_start_0
    monitor-exit v2

    const/4 v1, 0x0

    .line 214
    :goto_0
    return-object v1

    .line 213
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher4/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/android/launcher4/IconCache$CacheEntry;

    move-result-object v0

    .line 214
    .local v0, "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/launcher4/IconCache;->setIcon(Ljava/lang/String;Lcom/android/launcher4/IconCache$CacheEntry;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 208
    .end local v0    # "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    iget-object v4, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher4/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 194
    const/4 v5, 0x0

    .line 193
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 195
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 197
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    .line 202
    :goto_0
    return-object v3

    .line 201
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher4/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/android/launcher4/IconCache$CacheEntry;

    move-result-object v1

    .line 202
    .local v1, "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/android/launcher4/IconCache;->setIcon(Ljava/lang/String;Lcom/android/launcher4/IconCache$CacheEntry;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 192
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getTitleAndIcon(Lcom/android/launcher4/AppInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "application"    # Lcom/android/launcher4/AppInfo;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher4/AppInfo;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 182
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, p2, p3}, Lcom/android/launcher4/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/android/launcher4/IconCache$CacheEntry;

    move-result-object v0

    .line 185
    .local v0, "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/android/launcher4/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    .line 186
    invoke-virtual {p1}, Lcom/android/launcher4/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/launcher4/IconCache;->setIcon(Ljava/lang/String;Lcom/android/launcher4/IconCache$CacheEntry;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher4/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 181
    monitor-exit v2

    .line 189
    return-void

    .line 181
    .end local v0    # "entry":Lcom/android/launcher4/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/launcher4/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher4/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit v1

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
