.class public Lcom/android/launcher4/AppsCustomizeCellLayout;
.super Lcom/android/launcher4/CellLayout;
.source "AppsCustomizeCellLayout.java"

# interfaces
.implements Lcom/android/launcher4/Page;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/launcher4/CellLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/launcher4/AppsCustomizeCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeCellLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/launcher4/AppsCustomizeCellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeAllViewsOnPage()V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeCellLayout;->removeAllViews()V

    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/AppsCustomizeCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 31
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/launcher4/AppsCustomizeCellLayout;->removeViewAt(I)V

    .line 36
    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 5

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeCellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 58
    .local v1, "children":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual {v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 59
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
