.class Limagecoverflow/CoverFlowView$RecycleBin;
.super Ljava/lang/Object;
.source "CoverFlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Limagecoverflow/CoverFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field final bitmapCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Limagecoverflow/CoverFlowView;


# direct methods
.method constructor <init>(Limagecoverflow/CoverFlowView;)V
    .locals 2

    .prologue
    .line 1187
    iput-object p1, p0, Limagecoverflow/CoverFlowView$RecycleBin;->this$0:Limagecoverflow/CoverFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    new-instance v0, Limagecoverflow/CoverFlowView$RecycleBin$1;

    .line 1190
    invoke-virtual {p1}, Limagecoverflow/CoverFlowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Limagecoverflow/CoverFlowView$RecycleBin;->getCacheSize(Landroid/content/Context;)I

    move-result v1

    .line 1189
    invoke-direct {v0, p0, v1}, Limagecoverflow/CoverFlowView$RecycleBin$1;-><init>(Limagecoverflow/CoverFlowView$RecycleBin;I)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView$RecycleBin;->bitmapCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private getCacheSize(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1232
    .line 1233
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1232
    check-cast v0, Landroid/app/ActivityManager;

    .line 1234
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 1236
    .local v2, "memClass":I
    const/high16 v3, 0x100000

    mul-int/2addr v3, v2

    div-int/lit8 v1, v3, 0x15

    .line 1238
    .local v1, "cacheSize":I
    const-string v3, "CoverFlowView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cacheSize == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return v1
.end method


# virtual methods
.method public buildReflectionCache(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1215
    iget-object v0, p0, Limagecoverflow/CoverFlowView$RecycleBin;->bitmapCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1217
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Limagecoverflow/CoverFlowView$RecycleBin;->bitmapCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 1229
    return-void
.end method

.method public getCachedReflectiuon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "origin"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1211
    iget-object v0, p0, Limagecoverflow/CoverFlowView$RecycleBin;->bitmapCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public removeReflectionCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "origin"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1220
    if-nez p1, :cond_0

    .line 1221
    const/4 v0, 0x0

    .line 1224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Limagecoverflow/CoverFlowView$RecycleBin;->bitmapCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
