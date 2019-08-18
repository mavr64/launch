.class public Lcom/syu/util/CustomIcons;
.super Ljava/lang/Object;
.source "CustomIcons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/util/CustomIcons$Entry;
    }
.end annotation


# static fields
.field static instance:Lcom/syu/util/CustomIcons;

.field public static mCustomIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/syu/util/CustomIcons$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/syu/util/CustomIcons;->instance:Lcom/syu/util/CustomIcons;

    .line 22
    sput-object v0, Lcom/syu/util/CustomIcons;->mCustomIcons:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/syu/util/CustomIcons;->mCustomIcons:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomIcon(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "resid"    # I

    .prologue
    .line 34
    new-instance v0, Lcom/syu/util/CustomIcons$Entry;

    invoke-direct {v0, p0, p1, p2}, Lcom/syu/util/CustomIcons$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    .local v0, "entry":Lcom/syu/util/CustomIcons$Entry;
    sget-object v1, Lcom/syu/util/CustomIcons;->mCustomIcons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    sget-object v1, Lcom/syu/util/CustomIcons;->mCustomIcons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    return-void
.end method

.method private static beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
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

    .line 89
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    :cond_1
    if-eq v0, v2, :cond_2

    .line 94
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected start tag: found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_3
    return-void
.end method

.method public static getIcon(Landroid/content/pm/ActivityInfo;)I
    .locals 8
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v3, 0x0

    .line 41
    new-instance v1, Lcom/syu/util/CustomIcons$Entry;

    iget-object v4, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v3}, Lcom/syu/util/CustomIcons$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    .local v1, "entry":Lcom/syu/util/CustomIcons$Entry;
    sget-object v4, Lcom/syu/util/CustomIcons;->mCustomIcons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    sget-object v4, Lcom/syu/util/CustomIcons;->mCustomIcons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 44
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 45
    sget-object v4, Lcom/syu/util/CustomIcons;->mCustomIcons:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/util/CustomIcons$Entry;

    .line 46
    .local v0, "app":Lcom/syu/util/CustomIcons$Entry;
    const-string v4, "lunch"

    const-string v5, "pkg:%s, clazz:%s, icon:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/syu/util/CustomIcons$Entry;->pkgName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget-object v7, v0, Lcom/syu/util/CustomIcons$Entry;->clazzName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    iget v7, v0, Lcom/syu/util/CustomIcons$Entry;->resid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v3, v0, Lcom/syu/util/CustomIcons$Entry;->resid:I

    .line 50
    .end local v0    # "app":Lcom/syu/util/CustomIcons$Entry;
    .end local v2    # "index":I
    :cond_0
    return v3
.end method

.method public static getInstance()Lcom/syu/util/CustomIcons;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/syu/util/CustomIcons;->instance:Lcom/syu/util/CustomIcons;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/syu/util/CustomIcons;

    invoke-direct {v0}, Lcom/syu/util/CustomIcons;-><init>()V

    sput-object v0, Lcom/syu/util/CustomIcons;->instance:Lcom/syu/util/CustomIcons;

    .line 30
    :cond_0
    sget-object v0, Lcom/syu/util/CustomIcons;->instance:Lcom/syu/util/CustomIcons;

    return-object v0
.end method

.method public static loadIcons(Landroid/content/Context;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 56
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 57
    .local v2, "attrs":Landroid/util/AttributeSet;
    const-string v11, "customicons"

    invoke-static {v8, v11}, Lcom/syu/util/CustomIcons;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 59
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 62
    .local v4, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v4, :cond_2

    .line 63
    :cond_1
    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 84
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "depth":I
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 65
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "depth":I
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "type":I
    :cond_3
    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "added":Z
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "name":Ljava/lang/String;
    sget-object v11, Lcom/android/launcher4/R$styleable;->Entry:[I

    invoke-virtual {p0, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v11, "entry"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 74
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "pkg":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "clazz":Ljava/lang/String;
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 77
    .local v6, "iconid":I
    invoke-static {v9, v3, v6}, Lcom/syu/util/CustomIcons;->addCustomIcon(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    .end local v3    # "clazz":Ljava/lang/String;
    .end local v6    # "iconid":I
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "added":Z
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "depth":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "type":I
    :catch_0
    move-exception v5

    .line 82
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
