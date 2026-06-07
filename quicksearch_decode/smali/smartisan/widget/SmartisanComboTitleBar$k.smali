.class public final enum Lsmartisan/widget/SmartisanComboTitleBar$k;
.super Ljava/lang/Enum;
.source "SmartisanComboTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanComboTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsmartisan/widget/SmartisanComboTitleBar$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lsmartisan/widget/SmartisanComboTitleBar$k;

.field public static final enum b:Lsmartisan/widget/SmartisanComboTitleBar$k;

.field public static final synthetic c:[Lsmartisan/widget/SmartisanComboTitleBar$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lsmartisan/widget/SmartisanComboTitleBar$k;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lsmartisan/widget/SmartisanComboTitleBar$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/SmartisanComboTitleBar$k;->a:Lsmartisan/widget/SmartisanComboTitleBar$k;

    .line 2
    new-instance v0, Lsmartisan/widget/SmartisanComboTitleBar$k;

    const/4 v2, 0x1

    const-string v3, "SHORT"

    invoke-direct {v0, v3, v2}, Lsmartisan/widget/SmartisanComboTitleBar$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/SmartisanComboTitleBar$k;->b:Lsmartisan/widget/SmartisanComboTitleBar$k;

    const/4 v0, 0x2

    new-array v0, v0, [Lsmartisan/widget/SmartisanComboTitleBar$k;

    .line 3
    sget-object v3, Lsmartisan/widget/SmartisanComboTitleBar$k;->a:Lsmartisan/widget/SmartisanComboTitleBar$k;

    aput-object v3, v0, v1

    sget-object v1, Lsmartisan/widget/SmartisanComboTitleBar$k;->b:Lsmartisan/widget/SmartisanComboTitleBar$k;

    aput-object v1, v0, v2

    sput-object v0, Lsmartisan/widget/SmartisanComboTitleBar$k;->c:[Lsmartisan/widget/SmartisanComboTitleBar$k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsmartisan/widget/SmartisanComboTitleBar$k;
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/SmartisanComboTitleBar$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsmartisan/widget/SmartisanComboTitleBar$k;

    return-object p0
.end method

.method public static values()[Lsmartisan/widget/SmartisanComboTitleBar$k;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanComboTitleBar$k;->c:[Lsmartisan/widget/SmartisanComboTitleBar$k;

    invoke-virtual {v0}, [Lsmartisan/widget/SmartisanComboTitleBar$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsmartisan/widget/SmartisanComboTitleBar$k;

    return-object v0
.end method
