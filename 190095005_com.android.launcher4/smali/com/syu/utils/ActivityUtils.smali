.class public Lcom/syu/utils/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs startActivitySafely(Landroid/content/Context;Landroid/content/Intent;[I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # [I

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "success":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 33
    if-eqz p2, :cond_2

    array-length v3, p2

    if-lez v3, :cond_2

    .line 34
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 43
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    const/4 v2, 0x1

    .line 51
    :cond_0
    :goto_2
    return v2

    .line 34
    :cond_1
    aget v1, p2, v3

    .line 35
    .local v1, "flag":I
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "flag":I
    :cond_2
    const/high16 v3, 0x10200000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 47
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static varargs startActivitySafelyForAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "flags"    # [I

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "success":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 62
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {p0, v0, v2}, Lcom/syu/utils/ActivityUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;[I)Z

    move-result v1

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return v1
.end method

.method public static varargs startActivitySafelyForComponentName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "flags"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, "success":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v1, v2

    .line 74
    .local v1, "hasClazz":Z
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 75
    .local v2, "hasPkg":Z
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 76
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "c":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    new-array v5, v5, [I

    invoke-static {p0, v3, v5}, Lcom/syu/utils/ActivityUtils;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;[I)Z

    move-result v4

    .line 81
    .end local v0    # "c":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    return v4

    .end local v1    # "hasClazz":Z
    .end local v2    # "hasPkg":Z
    :cond_1
    move v1, v5

    .line 73
    goto :goto_0

    .restart local v1    # "hasClazz":Z
    :cond_2
    move v2, v5

    .line 74
    goto :goto_1
.end method
