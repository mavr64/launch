.class public final enum Lcom/syu/back/TrackUtils$TRACK_TYPE;
.super Ljava/lang/Enum;
.source "TrackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/back/TrackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRACK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/syu/back/TrackUtils$TRACK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BENZ:Lcom/syu/back/TrackUtils$TRACK_TYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/syu/back/TrackUtils$TRACK_TYPE;

.field public static final enum RECT:Lcom/syu/back/TrackUtils$TRACK_TYPE;

.field public static final enum RECT_DASH:Lcom/syu/back/TrackUtils$TRACK_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;

    const-string v1, "BENZ"

    invoke-direct {v0, v1, v2}, Lcom/syu/back/TrackUtils$TRACK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;->BENZ:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    new-instance v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;

    const-string v1, "RECT"

    invoke-direct {v0, v1, v3}, Lcom/syu/back/TrackUtils$TRACK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;->RECT:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    new-instance v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;

    const-string v1, "RECT_DASH"

    invoke-direct {v0, v1, v4}, Lcom/syu/back/TrackUtils$TRACK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;->RECT_DASH:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/syu/back/TrackUtils$TRACK_TYPE;

    sget-object v1, Lcom/syu/back/TrackUtils$TRACK_TYPE;->BENZ:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/syu/back/TrackUtils$TRACK_TYPE;->RECT:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/syu/back/TrackUtils$TRACK_TYPE;->RECT_DASH:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;->ENUM$VALUES:[Lcom/syu/back/TrackUtils$TRACK_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/syu/back/TrackUtils$TRACK_TYPE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/syu/back/TrackUtils$TRACK_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;->ENUM$VALUES:[Lcom/syu/back/TrackUtils$TRACK_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/syu/back/TrackUtils$TRACK_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
