.class public final enum Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;
.super Ljava/lang/Enum;
.source "CoverFlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Limagecoverflow/CoverFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoverFlowLayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

.field public static final enum MATCH_PARENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;"
        }
    .end annotation
.end field

.field public static final enum WRAP_CONTENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    const-string v1, "MATCH_PARENT"

    invoke-direct {v0, v1, v2}, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->MATCH_PARENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    new-instance v0, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    const-string v1, "WRAP_CONTENT"

    invoke-direct {v0, v1, v3}, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->WRAP_CONTENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    sget-object v1, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->MATCH_PARENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    aput-object v1, v0, v2

    sget-object v1, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->WRAP_CONTENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    aput-object v1, v0, v3

    sput-object v0, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->ENUM$VALUES:[Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    return-object v0
.end method

.method public static values()[Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->ENUM$VALUES:[Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    array-length v1, v0

    new-array v2, v1, [Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
