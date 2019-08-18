.class public abstract Lcom/android/launcher4/AppFilter;
.super Ljava/lang/Object;
.source "AppFilter.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadByName(Ljava/lang/String;)Lcom/android/launcher4/AppFilter;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 35
    :goto_0
    return-object v2

    .line 22
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/AppFilter;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 24
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "AppFilter"

    const-string v4, "Bad AppFilter class"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 26
    goto :goto_0

    .line 27
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v2, "AppFilter"

    const-string v4, "Bad AppFilter class"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 29
    goto :goto_0

    .line 30
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "AppFilter"

    const-string v4, "Bad AppFilter class"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 32
    goto :goto_0

    .line 33
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "AppFilter"

    const-string v4, "Bad AppFilter class"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 35
    goto :goto_0
.end method


# virtual methods
.method public abstract getAppTitle(Landroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract register()V
.end method

.method public abstract shouldShowApp(Landroid/content/ComponentName;)Z
.end method

.method public abstract unregister()V
.end method
