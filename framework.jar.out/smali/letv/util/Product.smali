.class public Lletv/util/Product;
.super Ljava/lang/Object;
.source "Product.java"


# static fields
.field public static final C1:Ljava/lang/String; = "C1"

.field public static final C1A:Ljava/lang/String; = "C1A"

.field public static final C1B:Ljava/lang/String; = "C1B"

.field public static final C1S:Ljava/lang/String; = "C1S"

.field private static final PROPERTY_PRODUCT_NAME:Ljava/lang/String; = "ro.letv.product.name"

.field private static final PROPERTY_PRODUCT_VARIANT:Ljava/lang/String; = "ro.letv.product.variant"

.field public static final S40:Ljava/lang/String; = "S40"

.field public static final S50:Ljava/lang/String; = "S50"

.field public static final X60:Ljava/lang/String; = "X60"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.letv.product.name"

    const-string v1, "X60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductVariant()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.letv.product.variant"

    const-string v1, "X60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static is3DCapable()Z
    .locals 2

    .prologue
    invoke-static {}, Lletv/util/Product;->getProductVariant()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isC1()Z
    .locals 2

    .prologue
    const-string v0, "C1"

    invoke-static {}, Lletv/util/Product;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isC1A()Z
    .locals 2

    .prologue
    const-string v0, "C1A"

    invoke-static {}, Lletv/util/Product;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isC1B()Z
    .locals 2

    .prologue
    const-string v0, "C1B"

    invoke-static {}, Lletv/util/Product;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isC1S()Z
    .locals 2

    .prologue
    const-string v0, "C1S"

    invoke-static {}, Lletv/util/Product;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isC1Series()Z
    .locals 3

    .prologue
    invoke-static {}, Lletv/util/Product;->getProductName()Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    const-string v2, "C1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "C1A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "C1B"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "C1S"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .local v1, ret:Z
    :goto_0
    return v1

    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isS40()Z
    .locals 2

    .prologue
    const-string v0, "S40"

    invoke-static {}, Lletv/util/Product;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isS50()Z
    .locals 2

    .prologue
    const-string v0, "S50"

    invoke-static {}, Lletv/util/Product;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isX60()Z
    .locals 2

    .prologue
    const-string v0, "X60"

    invoke-static {}, Lletv/util/Product;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
