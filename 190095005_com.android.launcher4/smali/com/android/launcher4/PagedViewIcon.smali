.class public Lcom/android/launcher4/PagedViewIcon;
.super Landroid/widget/TextView;
.source "PagedViewIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/PagedViewIcon$PressedCallback;
    }
.end annotation


# static fields
.field private static final PRESS_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "PagedViewIcon"


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mLockDrawableState:Z

.field private mPressedCallback:Lcom/android/launcher4/PagedViewIcon$PressedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PagedViewIcon;->mLockDrawableState:Z

    .line 63
    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/android/launcher4/AppInfo;ZLcom/android/launcher4/PagedViewIcon$PressedCallback;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher4/AppInfo;
    .param p2, "scaleUp"    # Z
    .param p3, "cb"    # Lcom/android/launcher4/PagedViewIcon$PressedCallback;

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v3, p1, Lcom/android/launcher4/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/launcher4/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 77
    iput-object p3, p0, Lcom/android/launcher4/PagedViewIcon;->mPressedCallback:Lcom/android/launcher4/PagedViewIcon$PressedCallback;

    .line 78
    iget-object v3, p0, Lcom/android/launcher4/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/android/launcher4/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/android/launcher4/PagedViewIcon;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 82
    .local v0, "padding":I
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedViewIcon;->setCompoundDrawablePadding(I)V

    .line 83
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 84
    const v4, 0x7f0a001c

    .line 83
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewIcon;->setTextColor(I)V

    .line 90
    :goto_0
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->typeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    .line 91
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewIcon;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    :cond_0
    const-string v3, "com.syu.voice.VoiceLaunch"

    iget-object v4, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    const-string v3, "com.syu.voice.Launch"

    iget-object v4, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    :cond_1
    const-string v3, "syu.voicename"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "voicename":Ljava/lang/String;
    const-string v3, "persist.syu.voice.newname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "voicenewname":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8f66\u52a9\u7406\u00b7"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v1    # "voicename":Ljava/lang/String;
    .end local v2    # "voicenewname":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 112
    return-void

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewIcon;->setTextColor(I)V

    goto :goto_0

    .line 101
    .restart local v1    # "voicename":Ljava/lang/String;
    .restart local v2    # "voicenewname":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 103
    const-string v3, "\u5929\u4e4b\u773c"

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 105
    :cond_4
    iget-object v3, p1, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    .end local v1    # "voicename":Ljava/lang/String;
    .end local v2    # "voicenewname":Ljava/lang/String;
    :cond_5
    iget-object v3, p1, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewIcon;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 149
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget v1, Lcom/android/launcher4/BubbleTextView;->SHADOW_LARGE_RADIUS:F

    .line 155
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x23000000

    .line 154
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 156
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 157
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget v1, Lcom/android/launcher4/BubbleTextView;->SHADOW_SMALL_RADIUS:F

    .line 162
    const/high16 v2, -0x34000000    # -3.3554432E7f

    .line 161
    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 163
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedViewIcon;->setFocusable(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewIcon;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedViewIcon;->setAlpha(F)V

    .line 135
    iget-object v0, p0, Lcom/android/launcher4/PagedViewIcon;->mPressedCallback:Lcom/android/launcher4/PagedViewIcon$PressedCallback;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/launcher4/PagedViewIcon;->mPressedCallback:Lcom/android/launcher4/PagedViewIcon$PressedCallback;

    invoke-interface {v0, p0}, Lcom/android/launcher4/PagedViewIcon$PressedCallback;->iconPressed(Lcom/android/launcher4/PagedViewIcon;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher4/PagedViewIcon;->mLockDrawableState:Z

    if-nez v0, :cond_0

    .line 139
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedViewIcon;->setAlpha(F)V

    goto :goto_0
.end method

.method public lockDrawableState()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedViewIcon;->mLockDrawableState:Z

    .line 116
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 69
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 70
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 71
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/PagedViewIcon;->setTextSize(IF)V

    .line 72
    return-void
.end method

.method public resetDrawableState()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PagedViewIcon;->mLockDrawableState:Z

    .line 120
    new-instance v0, Lcom/android/launcher4/PagedViewIcon$1;

    invoke-direct {v0, p0}, Lcom/android/launcher4/PagedViewIcon$1;-><init>(Lcom/android/launcher4/PagedViewIcon;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedViewIcon;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method
