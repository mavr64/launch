.class public Lcom/android/launcher4/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/PageIndicator$PageMarkerResources;
    }
.end annotation


# static fields
.field private static final MODULATE_ALPHA_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field private mActiveMarkerIndex:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/PageIndicatorMarker;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWindowSize:I

.field private mWindowRange:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 79
    sget-object v2, Lcom/android/launcher4/R$styleable;->PageIndicator:[I

    .line 78
    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xf

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher4/PageIndicator;->mMaxWindowSize:I

    .line 81
    iget-object v2, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    aput v4, v2, v4

    .line 82
    iget-object v2, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    const/4 v3, 0x1

    aput v4, v2, v3

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher4/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 88
    .local v1, "transition":Landroid/animation/LayoutTransition;
    const-wide/16 v2, 0xaf

    invoke-virtual {v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 89
    return-void
.end method

.method private disableLayoutTransitions()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/launcher4/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 101
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 102
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 105
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/launcher4/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 93
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 94
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 97
    return-void
.end method


# virtual methods
.method addMarker(ILcom/android/launcher4/PageIndicator$PageMarkerResources;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher4/PageIndicator$PageMarkerResources;
    .param p3, "allowAnimations"    # Z

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v1, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 178
    iget-object v1, p0, Lcom/android/launcher4/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 179
    const v2, 0x7f040028

    .line 178
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/PageIndicatorMarker;

    .line 180
    .local v0, "m":Lcom/android/launcher4/PageIndicatorMarker;
    iget v1, p2, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->activeId:I

    iget v2, p2, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/PageIndicatorMarker;->setMarkerDrawables(II)V

    .line 181
    iget-object v1, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 182
    iget v1, p0, Lcom/android/launcher4/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {p0, v1, p3}, Lcom/android/launcher4/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 183
    return-void
.end method

.method addMarkers(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "allowAnimations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/PageIndicator$PageMarkerResources;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/PageIndicator$PageMarkerResources;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 190
    return-void

    .line 188
    :cond_0
    const v2, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    invoke-virtual {p0, v2, v1, p2}, Lcom/android/launcher4/PageIndicator;->addMarker(ILcom/android/launcher4/PageIndicator$PageMarkerResources;Z)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method dumpState(Ljava/lang/String;)V
    .locals 6
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tmMarkers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 224
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\twindow: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    iget-object v4, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tchildren: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher4/PageIndicator;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/PageIndicator;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tactive: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/launcher4/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    return-void

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/PageIndicatorMarker;

    .line 222
    .local v1, "m":Lcom/android/launcher4/PageIndicatorMarker;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t\t("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 228
    .end local v1    # "m":Lcom/android/launcher4/PageIndicatorMarker;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/PageIndicatorMarker;

    .line 229
    .restart local v1    # "m":Lcom/android/launcher4/PageIndicatorMarker;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t\t("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method offsetWindowCenterTo(IZ)V
    .locals 14
    .param p1, "activeIndex"    # I
    .param p2, "allowAnimations"    # Z

    .prologue
    .line 108
    if-gez p1, :cond_0

    .line 109
    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    :cond_0
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/android/launcher4/PageIndicator;->mMaxWindowSize:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 112
    .local v10, "windowSize":I
    div-int/lit8 v0, v10, 0x2

    .line 113
    .local v0, "hWindowSize":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v1, v12, v13

    .line 114
    .local v1, "hfWindowSize":F
    const/4 v12, 0x0

    sub-int v13, p1, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 115
    .local v11, "windowStart":I
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/android/launcher4/PageIndicator;->mMaxWindowSize:I

    add-int/2addr v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 116
    .local v7, "windowEnd":I
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v11, v7, v12

    .line 117
    sub-int v12, v7, v11

    div-int/lit8 v12, v12, 0x2

    add-int v8, v11, v12

    .line 118
    .local v8, "windowMid":I
    if-nez v11, :cond_3

    const/4 v6, 0x1

    .line 119
    .local v6, "windowAtStart":Z
    :goto_0
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v7, v12, :cond_4

    const/4 v5, 0x1

    .line 120
    .local v5, "windowAtEnd":Z
    :goto_1
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-ne v12, v11, :cond_5

    .line 121
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    if-ne v12, v7, :cond_5

    .line 120
    const/4 v9, 0x0

    .line 123
    .local v9, "windowMoved":Z
    :goto_2
    if-nez p2, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/android/launcher4/PageIndicator;->disableLayoutTransitions()V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/PageIndicator;->getChildCount()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, "i":I
    :goto_3
    if-gez v2, :cond_6

    .line 137
    const/4 v2, 0x0

    :goto_4
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v2, v12, :cond_9

    .line 166
    if-nez p2, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/android/launcher4/PageIndicator;->enableLayoutTransitions()V

    .line 170
    :cond_2
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x0

    aput v11, v12, v13

    .line 171
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x1

    aput v7, v12, v13

    .line 172
    return-void

    .line 118
    .end local v2    # "i":I
    .end local v5    # "windowAtEnd":Z
    .end local v6    # "windowAtStart":Z
    .end local v9    # "windowMoved":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 119
    .restart local v6    # "windowAtStart":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 120
    .restart local v5    # "windowAtEnd":Z
    :cond_5
    const/4 v9, 0x1

    goto :goto_2

    .line 129
    .restart local v2    # "i":I
    .restart local v9    # "windowMoved":Z
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/PageIndicatorMarker;

    .line 130
    .local v3, "marker":Lcom/android/launcher4/PageIndicatorMarker;
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 131
    .local v4, "markerIndex":I
    if-lt v4, v11, :cond_7

    if-lt v4, v7, :cond_8

    .line 132
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/launcher4/PageIndicator;->removeView(Landroid/view/View;)V

    .line 128
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 138
    .end local v3    # "marker":Lcom/android/launcher4/PageIndicatorMarker;
    .end local v4    # "markerIndex":I
    :cond_9
    iget-object v12, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/PageIndicatorMarker;

    .line 139
    .restart local v3    # "marker":Lcom/android/launcher4/PageIndicatorMarker;
    if-gt v11, v2, :cond_c

    if-ge v2, v7, :cond_c

    .line 140
    invoke-virtual {p0, v3}, Lcom/android/launcher4/PageIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v12

    if-gez v12, :cond_a

    .line 141
    sub-int v12, v2, v11

    invoke-virtual {p0, v3, v12}, Lcom/android/launcher4/PageIndicator;->addView(Landroid/view/View;I)V

    .line 143
    :cond_a
    if-ne v2, p1, :cond_b

    .line 144
    invoke-virtual {v3, v9}, Lcom/android/launcher4/PageIndicatorMarker;->activate(Z)V

    .line 137
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 146
    :cond_b
    invoke-virtual {v3, v9}, Lcom/android/launcher4/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_5

    .line 149
    :cond_c
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/launcher4/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_5
.end method

.method removeAllMarkers(Z)V
    .locals 1
    .param p1, "allowAnimations"    # Z

    .prologue
    .line 206
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 209
    return-void

    .line 207
    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher4/PageIndicator;->removeMarker(IZ)V

    goto :goto_0
.end method

.method removeMarker(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "allowAnimations"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 200
    iget-object v0, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    iget v0, p0, Lcom/android/launcher4/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher4/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 203
    :cond_0
    return-void
.end method

.method setActiveMarker(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/android/launcher4/PageIndicator;->mActiveMarkerIndex:I

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 215
    return-void
.end method

.method updateMarker(ILcom/android/launcher4/PageIndicator$PageMarkerResources;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/launcher4/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/PageIndicatorMarker;

    .line 194
    .local v0, "m":Lcom/android/launcher4/PageIndicatorMarker;
    iget v1, p2, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->activeId:I

    iget v2, p2, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/PageIndicatorMarker;->setMarkerDrawables(II)V

    .line 195
    return-void
.end method
