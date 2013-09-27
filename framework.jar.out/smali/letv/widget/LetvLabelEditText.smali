.class public Lletv/widget/LetvLabelEditText;
.super Landroid/widget/LinearLayout;
.source "LetvLabelEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lletv/widget/LetvLabelEditText$OnInputValidationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LetvLabelEditText"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditText:Lletv/widget/LetvEditText;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsFocused:Z

.field private mLabelText:Landroid/widget/TextView;

.field private mListener:Lletv/widget/LetvLabelEditText$OnInputValidationListener;

.field private mWarningIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lletv/widget/LetvLabelEditText;->mIsFocused:Z

    iput-object p1, p0, Lletv/widget/LetvLabelEditText;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lletv/widget/LetvLabelEditText;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090085

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lletv/widget/LetvLabelEditText;->initLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lletv/widget/LetvLabelEditText;->mIsFocused:Z

    iput-object p1, p0, Lletv/widget/LetvLabelEditText;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lletv/widget/LetvLabelEditText;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090085

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lletv/widget/LetvLabelEditText;->initLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    const v0, 0x1020332

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lletv/widget/LetvEditText;

    iput-object v0, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    const v0, 0x10202b4

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lletv/widget/LetvLabelEditText;->mLabelText:Landroid/widget/TextView;

    const v0, 0x1020333

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lletv/widget/LetvLabelEditText;->mWarningIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mWarningIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x10800cf

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelEditText;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getEditString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    invoke-virtual {v0}, Lletv/widget/LetvEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    return-object v0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lletv/widget/LetvLabelEditText;->mIsFocused:Z

    return v0
.end method

.method public isEditorActivated()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    invoke-virtual {v0}, Lletv/widget/LetvEditText;->isEditorActivated()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v2, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    invoke-virtual {v2, p1, p2}, Lletv/widget/LetvEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    invoke-virtual {v2, p1, p2}, Lletv/widget/LetvEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .local v0, result:Z
    const/4 v1, 0x0

    .local v1, showWarning:Z
    iget-object v2, p0, Lletv/widget/LetvLabelEditText;->mListener:Lletv/widget/LetvLabelEditText$OnInputValidationListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lletv/widget/LetvLabelEditText;->mListener:Lletv/widget/LetvLabelEditText$OnInputValidationListener;

    iget-object v3, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    invoke-virtual {v3}, Lletv/widget/LetvEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lletv/widget/LetvLabelEditText$OnInputValidationListener;->onInputValidated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Lletv/widget/LetvLabelEditText;->showWarningIndicator(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    invoke-virtual {v0, p1}, Lletv/widget/LetvEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lletv/widget/LetvEditText;->setEditorFocus(Z)V

    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lletv/widget/LetvLabelEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x10800d0

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelEditText;->setBackgroundResource(I)V

    :goto_0
    iput-boolean p1, p0, Lletv/widget/LetvLabelEditText;->mIsFocused:Z

    return-void

    :cond_0
    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lletv/widget/LetvEditText;->setEditorFocus(Z)V

    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lletv/widget/LetvLabelEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x10800cf

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelEditText;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .parameter "hint"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mEditText:Lletv/widget/LetvEditText;

    invoke-virtual {v0, p1}, Lletv/widget/LetvEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvLabelEditText;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnInputValidationListener(Lletv/widget/LetvLabelEditText$OnInputValidationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvLabelEditText;->mListener:Lletv/widget/LetvLabelEditText$OnInputValidationListener;

    return-void
.end method

.method public showWarningIndicator(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    iget-object v1, p0, Lletv/widget/LetvLabelEditText;->mWarningIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
