.class public Lcom/syu/util/CustomIcons$Entry;
.super Ljava/lang/Object;
.source "CustomIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/util/CustomIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field clazzName:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field resid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/String;
    .param p3, "res"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/syu/util/CustomIcons$Entry;->pkgName:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/syu/util/CustomIcons$Entry;->resid:I

    .line 112
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    instance-of v5, p1, Lcom/syu/util/CustomIcons$Entry;

    if-nez v5, :cond_1

    .line 117
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v2, p1

    .line 119
    check-cast v2, Lcom/syu/util/CustomIcons$Entry;

    .line 120
    .local v2, "other":Lcom/syu/util/CustomIcons$Entry;
    iget-object v5, p0, Lcom/syu/util/CustomIcons$Entry;->pkgName:Ljava/lang/String;

    iget-object v6, v2, Lcom/syu/util/CustomIcons$Entry;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 121
    .local v1, "checkPkg":Z
    iget-object v5, p0, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 123
    :cond_2
    iget-object v5, p0, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "checkClazz":Z
    iget-object v5, v2, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 126
    iget-object v5, p0, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    iget-object v6, v2, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0

    .line 130
    .end local v0    # "checkClazz":Z
    :cond_5
    const/4 v0, 0x0

    .line 131
    .restart local v0    # "checkClazz":Z
    iget-object v5, v2, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 132
    const/4 v0, 0x1

    .line 134
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v1, v3

    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_0
.end method
