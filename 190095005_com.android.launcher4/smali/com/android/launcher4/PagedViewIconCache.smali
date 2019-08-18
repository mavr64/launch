.class public Lcom/android/launcher4/PagedViewIconCache;
.super Ljava/lang/Object;
.source "PagedViewIconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/PagedViewIconCache$Key;
    }
.end annotation


# instance fields
.field private final mIconOutlineCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher4/PagedViewIconCache$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method private retainAll(Ljava/util/HashSet;Lcom/android/launcher4/PagedViewIconCache$Key$Type;)V
    .locals 4
    .param p2, "t"    # Lcom/android/launcher4/PagedViewIconCache$Key$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher4/PagedViewIconCache$Key;",
            ">;",
            "Lcom/android/launcher4/PagedViewIconCache$Key$Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "keysToKeep":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher4/PagedViewIconCache$Key;>;"
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 89
    .local v1, "keysToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher4/PagedViewIconCache$Key;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    return-void

    .line 90
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/PagedViewIconCache$Key;

    .line 91
    .local v0, "key":Lcom/android/launcher4/PagedViewIconCache$Key;
    invoke-virtual {v0, p2}, Lcom/android/launcher4/PagedViewIconCache$Key;->isKeyType(Lcom/android/launcher4/PagedViewIconCache$Key$Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    iget-object v2, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addOutline(Lcom/android/launcher4/PagedViewIconCache$Key;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Lcom/android/launcher4/PagedViewIconCache$Key;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 86
    return-void

    .line 82
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/PagedViewIconCache$Key;

    .line 83
    .local v0, "key":Lcom/android/launcher4/PagedViewIconCache$Key;
    iget-object v1, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public getOutline(Lcom/android/launcher4/PagedViewIconCache$Key;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Lcom/android/launcher4/PagedViewIconCache$Key;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public removeOutline(Lcom/android/launcher4/PagedViewIconCache$Key;)V
    .locals 1
    .param p1, "key"    # Lcom/android/launcher4/PagedViewIconCache$Key;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    iget-object v0, p0, Lcom/android/launcher4/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    return-void
.end method

.method public retainAllAppWidgets(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v1, "keysSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher4/PagedViewIconCache$Key;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    sget-object v2, Lcom/android/launcher4/PagedViewIconCache$Key$Type;->AppWidgetProviderInfoKey:Lcom/android/launcher4/PagedViewIconCache$Key$Type;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher4/PagedViewIconCache;->retainAll(Ljava/util/HashSet;Lcom/android/launcher4/PagedViewIconCache$Key$Type;)V

    .line 120
    return-void

    .line 116
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 117
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v3, Lcom/android/launcher4/PagedViewIconCache$Key;

    invoke-direct {v3, v0}, Lcom/android/launcher4/PagedViewIconCache$Key;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public retainAllApps(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v1, "keysSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher4/PagedViewIconCache$Key;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    sget-object v2, Lcom/android/launcher4/PagedViewIconCache$Key$Type;->ApplicationInfoKey:Lcom/android/launcher4/PagedViewIconCache$Key$Type;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher4/PagedViewIconCache;->retainAll(Ljava/util/HashSet;Lcom/android/launcher4/PagedViewIconCache$Key$Type;)V

    .line 104
    return-void

    .line 100
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 101
    .local v0, "info":Lcom/android/launcher4/AppInfo;
    new-instance v3, Lcom/android/launcher4/PagedViewIconCache$Key;

    invoke-direct {v3, v0}, Lcom/android/launcher4/PagedViewIconCache$Key;-><init>(Lcom/android/launcher4/AppInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public retainAllShortcuts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v1, "keysSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher4/PagedViewIconCache$Key;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    sget-object v2, Lcom/android/launcher4/PagedViewIconCache$Key$Type;->ResolveInfoKey:Lcom/android/launcher4/PagedViewIconCache$Key$Type;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher4/PagedViewIconCache;->retainAll(Ljava/util/HashSet;Lcom/android/launcher4/PagedViewIconCache$Key$Type;)V

    .line 112
    return-void

    .line 108
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 109
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/android/launcher4/PagedViewIconCache$Key;

    invoke-direct {v3, v0}, Lcom/android/launcher4/PagedViewIconCache$Key;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
