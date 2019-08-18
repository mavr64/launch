.class final enum Lcom/android/launcher4/Workspace$State;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher4/Workspace$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/android/launcher4/Workspace$State;

.field public static final enum NORMAL:Lcom/android/launcher4/Workspace$State;

.field public static final enum OVERVIEW:Lcom/android/launcher4/Workspace$State;

.field public static final enum SMALL:Lcom/android/launcher4/Workspace$State;

.field public static final enum SPRING_LOADED:Lcom/android/launcher4/Workspace$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    new-instance v0, Lcom/android/launcher4/Workspace$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    new-instance v0, Lcom/android/launcher4/Workspace$State;

    const-string v1, "SPRING_LOADED"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher4/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    new-instance v0, Lcom/android/launcher4/Workspace$State;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher4/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    new-instance v0, Lcom/android/launcher4/Workspace$State;

    const-string v1, "OVERVIEW"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher4/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    .line 195
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher4/Workspace$State;

    sget-object v1, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher4/Workspace$State;->ENUM$VALUES:[Lcom/android/launcher4/Workspace$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher4/Workspace$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/android/launcher4/Workspace$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/Workspace$State;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher4/Workspace$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/launcher4/Workspace$State;->ENUM$VALUES:[Lcom/android/launcher4/Workspace$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/launcher4/Workspace$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
