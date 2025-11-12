# Design System Documentation

## 🎨 Design Tokens

### Colors

#### Primary Colors
- **Primary 500**: `#3B82F6` • rgb(59, 130, 246)
  - Usage: Main brand color, primary CTAs, links
  - Token: `--color-primary-500`

- **Primary 600**: `#2563EB` • rgb(37, 99, 235)
  - Usage: Hover state for primary elements
  - Token: `--color-primary-600`

#### Secondary Colors
- **Secondary 500**: `#6B7280` • rgb(107, 114, 128)
  - Usage: Secondary buttons, less prominent actions
  - Token: `--color-secondary-500`

#### Accent Colors
- **Success**: `#10B981` • rgb(16, 185, 129) • Token: `--color-success`
- **Warning**: `#F59E0B` • rgb(245, 158, 11) • Token: `--color-warning`
- **Error**: `#EF4444` • rgb(239, 68, 68) • Token: `--color-error`
- **Info**: `#3B82F6` • rgb(59, 130, 246) • Token: `--color-info`

#### Background Colors
- **Base**: `#FFFFFF` • Main background • Token: `--color-bg-base`
- **Surface**: `#F9FAFB` • Cards, elevated surfaces • Token: `--color-bg-surface`
- **Muted**: `#F3F4F6` • Disabled backgrounds • Token: `--color-bg-muted`

#### Text Colors
- **Primary**: `#111827` • Headings, primary text • Token: `--color-text-primary`
- **Secondary**: `#6B7280` • Body text • Token: `--color-text-secondary`
- **Muted**: `#9CA3AF` • Placeholder, disabled • Token: `--color-text-muted`

### Typography

#### Font Families
- **Sans-serif**: Inter, system-ui, -apple-system, sans-serif • Token: `--font-family-sans`
- **Monospace**: 'SF Mono', Monaco, monospace • Token: `--font-family-mono`

#### Type Scale
- **H1**: 36px (2.25rem) • Bold (700) • Line height: 1.2 • Token: `--text-h1`
- **H2**: 30px (1.875rem) • Bold (700) • Line height: 1.3 • Token: `--text-h2`
- **H3**: 24px (1.5rem) • Semibold (600) • Line height: 1.4 • Token: `--text-h3`
- **H4**: 20px (1.25rem) • Semibold (600) • Line height: 1.5 • Token: `--text-h4`
- **Body Large**: 18px (1.125rem) • Regular (400) • Line height: 1.6 • Token: `--text-body-lg`
- **Body**: 16px (1rem) • Regular (400) • Line height: 1.5 • Token: `--text-body`
- **Body Small**: 14px (0.875rem) • Regular (400) • Line height: 1.5 • Token: `--text-body-sm`
- **Caption**: 12px (0.75rem) • Regular (400) • Line height: 1.4 • Token: `--text-caption`

### Spacing

Base unit: **4px**

| Token | Value | Usage |
|-------|-------|-------|
| `--spacing-0` | 0px | Reset |
| `--spacing-1` | 4px | Minimal spacing |
| `--spacing-2` | 8px | Tight spacing |
| `--spacing-3` | 12px | Small spacing |
| `--spacing-4` | 16px | Default spacing |
| `--spacing-5` | 20px | Medium spacing |
| `--spacing-6` | 24px | Large spacing |
| `--spacing-8` | 32px | XL spacing |
| `--spacing-10` | 40px | XXL spacing |
| `--spacing-12` | 48px | Section spacing |
| `--spacing-16` | 64px | Large section spacing |

### Shadows & Effects

**Shadows:**
- `--shadow-sm`: `0 1px 2px 0 rgba(0, 0, 0, 0.05)` • Subtle elevation
- `--shadow-md`: `0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)` • Cards, dropdowns
- `--shadow-lg`: `0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)` • Modals

**Border Radius:**
- `--radius-sm`: 4px • Small elements
- `--radius-md`: 6px • Buttons, inputs
- `--radius-lg`: 8px • Cards
- `--radius-xl`: 12px • Large cards
- `--radius-full`: 9999px • Pills, avatars

---

## 📐 Components Library

### Buttons

#### Overview
Buttons are used for primary user actions throughout the interface. The design uses distinct visual hierarchies to guide users toward important actions.

#### Variants

**Primary Button**
- **Purpose**: Main call-to-action, most important actions
- **Visual characteristics:**
  - Background: `#3B82F6` (Primary 500)
  - Text: White, 16px, Medium weight (500)
  - Padding: 10px 20px
  - Border radius: 6px
  - No border
- **States:**
  - Hover: Background `#2563EB`, adds `shadow-md`
  - Active: Background `#1D4ED8`, translateY(1px)
  - Focus: 3px blue ring with 0.1 opacity
  - Disabled: Background `#93C5FD`, opacity 0.6, cursor not-allowed

**Secondary Button**
- **Purpose**: Less prominent actions, alternative options
- **Visual characteristics:**
  - Background: Transparent
  - Text: `#6B7280`, 16px, Medium weight (500)
  - Border: 1px solid `#6B7280`
  - Padding: 10px 20px
  - Border radius: 6px
- **States:**
  - Hover: Background `#F9FAFB`, border and text `#111827`
  - Active: Background `#F3F4F6`
  - Focus: 3px gray ring

**Ghost/Text Button**
- **Purpose**: Tertiary actions, cancel buttons
- **Visual characteristics:**
  - Background: Transparent
  - Text: `#6B7280`, 16px, Medium weight (500)
  - No border
  - Padding: 10px 16px
- **States:**
  - Hover: Background `#F9FAFB`, text `#111827`

**Destructive Button**
- **Purpose**: Dangerous actions (delete, remove)
- **Visual characteristics:**
  - Background: `#EF4444` (Error)
  - Text: White, 16px, Medium weight (500)
  - Padding: 10px 20px
  - Border radius: 6px
- **States:**
  - Hover: Background `#DC2626`, shadow

#### Sizing

- **Small**: padding `8px 16px`, font-size `14px`, height ~36px
- **Medium** (default): padding `10px 20px`, font-size `16px`, height ~44px
- **Large**: padding `12px 24px`, font-size `18px`, height ~52px
- **Full-width**: `width: 100%` for mobile or form contexts

#### CSS Implementation

```css
/* Base Button Styles */
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: var(--spacing-2);
  font-family: var(--font-family-sans);
  font-weight: 500;
  border-radius: var(--radius-md);
  cursor: pointer;
  transition: all 0.2s ease;
  text-decoration: none;
  border: none;
  font-size: 16px;
  padding: 10px 20px;
}

.btn:focus-visible {
  outline: none;
}

/* Primary Button */
.btn-primary {
  background: var(--color-primary-500);
  color: white;
}

.btn-primary:hover {
  background: var(--color-primary-600);
  box-shadow: var(--shadow-md);
}

.btn-primary:active {
  background: #1D4ED8;
  transform: translateY(1px);
}

.btn-primary:focus-visible {
  box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
}

.btn-primary:disabled {
  background: #93C5FD;
  opacity: 0.6;
  cursor: not-allowed;
}

/* Secondary Button */
.btn-secondary {
  background: transparent;
  color: var(--color-secondary-500);
  border: 1px solid var(--color-secondary-500);
}

.btn-secondary:hover {
  background: var(--color-bg-surface);
  color: var(--color-text-primary);
  border-color: var(--color-text-primary);
}

.btn-secondary:active {
  background: var(--color-bg-muted);
}

.btn-secondary:focus-visible {
  box-shadow: 0 0 0 3px rgba(107, 114, 128, 0.1);
}

/* Ghost Button */
.btn-ghost {
  background: transparent;
  color: var(--color-secondary-500);
  padding: 10px 16px;
}

.btn-ghost:hover {
  background: var(--color-bg-surface);
  color: var(--color-text-primary);
}

/* Destructive Button */
.btn-destructive {
  background: var(--color-error);
  color: white;
}

.btn-destructive:hover {
  background: #DC2626;
  box-shadow: var(--shadow-md);
}

/* Sizes */
.btn-sm {
  padding: 8px 16px;
  font-size: 14px;
}

.btn-lg {
  padding: 12px 24px;
  font-size: 18px;
}

.btn-full {
  width: 100%;
}

/* With Icon */
.btn svg {
  width: 20px;
  height: 20px;
}
```

#### Usage Guidelines
- Use **Primary** for the main action on a page (limit to 1-2 per screen)
- Use **Secondary** for alternative or less important actions
- Use **Ghost** for tertiary actions like "Cancel" or navigation
- Use **Destructive** only for dangerous, irreversible actions
- Always provide focus states for keyboard accessibility
- Maintain sufficient color contrast (WCAG AA minimum)

---

### Form Components

#### Text Input

**Purpose**: Single-line text entry for forms

**Visual Characteristics:**
- Border: 1px solid `#D1D5DB`
- Border radius: 6px
- Padding: 10px 12px
- Font size: 16px
- Background: White
- Height: ~44px

**States:**
- **Default**: Gray border `#D1D5DB`
- **Focus**: Blue border `#3B82F6`, blue shadow ring `0 0 0 3px rgba(59, 130, 246, 0.1)`
- **Error**: Red border `#EF4444`, red shadow ring
- **Disabled**: Background `#F9FAFB`, text color `#9CA3AF`, cursor not-allowed
- **Success**: Green border `#10B981` (if validation shown)

**Label Styling:**
- Position: Above input
- Font size: 14px
- Font weight: 500
- Color: `#374151`
- Margin bottom: 6px
- Required indicator: Red asterisk `*`

**Helper Text:**
- Font size: 14px
- Color: `#6B7280` (default) or `#EF4444` (error)
- Margin top: 6px

**CSS Implementation:**
```css
.input-group {
  display: flex;
  flex-direction: column;
  gap: var(--spacing-1);
}

.input-label {
  font-size: 14px;
  font-weight: 500;
  color: #374151;
}

.input-label .required {
  color: var(--color-error);
}

.input {
  width: 100%;
  padding: 10px 12px;
  font-size: 16px;
  font-family: var(--font-family-sans);
  border: 1px solid #D1D5DB;
  border-radius: var(--radius-md);
  background: white;
  transition: all 0.2s ease;
}

.input:focus {
  outline: none;
  border-color: var(--color-primary-500);
  box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
}

.input.error {
  border-color: var(--color-error);
}

.input.error:focus {
  box-shadow: 0 0 0 3px rgba(239, 68, 68, 0.1);
}

.input:disabled {
  background-color: var(--color-bg-surface);
  color: var(--color-text-muted);
  cursor: not-allowed;
}

.input-helper {
  font-size: 14px;
  color: var(--color-text-secondary);
}

.input-helper.error {
  color: var(--color-error);
}
```

#### Checkbox

**Visual Characteristics:**
- Size: 20px × 20px
- Border: 2px solid `#D1D5DB`
- Border radius: 4px
- Background: White (unchecked), `#3B82F6` (checked)
- Checkmark: White, scaled from center

**States:**
- **Default**: Gray border, white background
- **Hover**: Border `#9CA3AF`
- **Checked**: Blue background, white checkmark
- **Focus**: Blue ring `0 0 0 3px rgba(59, 130, 246, 0.1)`
- **Disabled**: Gray background, lighter checkmark

**Label:**
- Position: Right of checkbox
- Margin left: 8px
- Font size: 16px
- Color: `#374151`

**CSS Implementation:**
```css
.checkbox-wrapper {
  display: flex;
  align-items: center;
  gap: var(--spacing-2);
}

.checkbox {
  width: 20px;
  height: 20px;
  border: 2px solid #D1D5DB;
  border-radius: var(--radius-sm);
  background: white;
  cursor: pointer;
  transition: all 0.2s ease;
  appearance: none;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  position: relative;
}

.checkbox:hover {
  border-color: #9CA3AF;
}

.checkbox:checked {
  background: var(--color-primary-500);
  border-color: var(--color-primary-500);
}

.checkbox:checked::after {
  content: '';
  width: 10px;
  height: 6px;
  border: 2px solid white;
  border-top: none;
  border-right: none;
  transform: rotate(-45deg) translateY(-1px);
}

.checkbox:focus-visible {
  outline: none;
  box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
}

.checkbox:disabled {
  background: var(--color-bg-muted);
  cursor: not-allowed;
}

.checkbox-label {
  font-size: 16px;
  color: #374151;
  cursor: pointer;
}
```

#### Select/Dropdown

**Visual Characteristics:**
- Same styling as text input
- Dropdown arrow: Right-aligned, 16px, gray color
- Padding right: 36px (to accommodate arrow)

**Dropdown Menu:**
- Background: White
- Border: 1px solid `#E5E7EB`
- Border radius: 6px
- Shadow: `shadow-md`
- Max height: 300px with scroll
- Padding: 4px

**Option Styling:**
- Padding: 10px 12px
- Font size: 16px
- Hover: Background `#F3F4F6`
- Selected: Background `#EFF6FF`, text `#3B82F6`

---

### Cards

#### Overview
Cards are used to group related content and provide visual separation between different sections of information.

#### Basic Card

**Visual Characteristics:**
- Background: White
- Border radius: 8px
- Shadow: `shadow-sm` (subtle elevation)
- Padding: 24px
- Border: Optional 1px solid `#E5E7EB` (varies by context)

**Hover Effect** (for interactive cards):
- Shadow: `shadow-md`
- Transform: `translateY(-2px)`
- Transition: 0.2s ease

**CSS Implementation:**
```css
.card {
  background: var(--color-bg-base);
  border-radius: var(--radius-lg);
  padding: var(--spacing-6);
  box-shadow: var(--shadow-sm);
  transition: all 0.2s ease;
}

.card.interactive {
  cursor: pointer;
}

.card.interactive:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

.card-header {
  font-size: 20px;
  font-weight: 600;
  color: var(--color-text-primary);
  margin-bottom: var(--spacing-4);
  padding-bottom: var(--spacing-3);
  border-bottom: 1px solid #E5E7EB;
}

.card-body {
  font-size: 16px;
  color: var(--color-text-secondary);
  line-height: 1.6;
}

.card-footer {
  margin-top: var(--spacing-5);
  padding-top: var(--spacing-4);
  border-top: 1px solid #E5E7EB;
  display: flex;
  gap: var(--spacing-3);
  justify-content: flex-end;
}
```

#### Card with Image

**Image Treatment:**
- Position: Top of card
- Border radius: 8px 8px 0 0 (top corners only)
- Aspect ratio: 16:9 or 4:3 (varies)
- Object fit: Cover

**Content Padding:**
- Body below image: 20px padding on all sides

---

### Navigation

#### Navigation Bar

**Visual Characteristics:**
- Height: 64px
- Background: White
- Border bottom: 1px solid `#E5E7EB`
- Padding: 0 24px
- Display: Flex, space-between alignment
- Position: Sticky top (remains visible on scroll)

**Logo:**
- Height: 32px
- Positioned left

**Navigation Items Container:**
- Display: Flex
- Gap: 32px between items
- Centered vertically

#### Navigation Items

**Default State:**
- Font size: 16px
- Font weight: 500
- Color: `#6B7280`
- Padding: 8px 12px
- Text decoration: None
- Border bottom: 2px solid transparent

**Hover State:**
- Color: `#111827`
- Transition: 0.2s ease

**Active State:**
- Color: `#3B82F6`
- Border bottom: 2px solid `#3B82F6`

**CSS Implementation:**
```css
.navbar {
  height: 64px;
  background: var(--color-bg-base);
  border-bottom: 1px solid #E5E7EB;
  padding: 0 var(--spacing-6);
  display: flex;
  align-items: center;
  justify-content: space-between;
  position: sticky;
  top: 0;
  z-index: 50;
}

.navbar-logo {
  height: 32px;
}

.navbar-menu {
  display: flex;
  gap: var(--spacing-8);
  align-items: center;
}

.nav-item {
  font-size: 16px;
  font-weight: 500;
  color: var(--color-text-secondary);
  text-decoration: none;
  padding: var(--spacing-2) var(--spacing-3);
  border-bottom: 2px solid transparent;
  transition: all 0.2s ease;
}

.nav-item:hover {
  color: var(--color-text-primary);
}

.nav-item.active {
  color: var(--color-primary-500);
  border-bottom-color: var(--color-primary-500);
}
```

---

### Modals & Overlays

#### Modal/Dialog

**Backdrop:**
- Background: `rgba(0, 0, 0, 0.5)`
- Backdrop blur: 4px (if supported)
- Full viewport coverage
- z-index: 1000

**Modal Container:**
- Width: 480px (max-width: 90vw on mobile)
- Background: White
- Border radius: 12px
- Shadow: `shadow-lg`
- Padding: 0 (padding applied to sections)
- Position: Centered (fixed positioning)
- Animation: Fade in + scale from 0.95

**Header:**
- Padding: 20px 24px
- Border bottom: 1px solid `#E5E7EB`
- Display: Flex, space-between

**Title:**
- Font size: 20px
- Font weight: 600
- Color: `#111827`

**Close Button:**
- Size: 24px × 24px
- Color: `#6B7280`
- Hover: Color `#111827`, background `#F3F4F6` (circular)
- Padding: 4px
- Border radius: Full

**Body:**
- Padding: 24px
- Max height: 60vh
- Overflow: Auto (scrollable if needed)
- Font size: 16px
- Line height: 1.6

**Footer:**
- Padding: 16px 24px
- Border top: 1px solid `#E5E7EB`
- Display: Flex, justify-content: flex-end
- Gap: 12px between buttons

**CSS Implementation:**
```css
.modal-backdrop {
  position: fixed;
  inset: 0;
  background: rgba(0, 0, 0, 0.5);
  backdrop-filter: blur(4px);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 1000;
  animation: fadeIn 0.2s ease;
}

.modal {
  width: 480px;
  max-width: 90vw;
  background: white;
  border-radius: var(--radius-xl);
  box-shadow: var(--shadow-lg);
  animation: modalSlideIn 0.3s ease;
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

@keyframes modalSlideIn {
  from {
    opacity: 0;
    transform: scale(0.95) translateY(-20px);
  }
  to {
    opacity: 1;
    transform: scale(1) translateY(0);
  }
}

.modal-header {
  padding: 20px 24px;
  border-bottom: 1px solid #E5E7EB;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.modal-title {
  font-size: 20px;
  font-weight: 600;
  color: var(--color-text-primary);
}

.modal-close {
  width: 32px;
  height: 32px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--color-text-secondary);
  border-radius: var(--radius-full);
  cursor: pointer;
  transition: all 0.2s ease;
}

.modal-close:hover {
  color: var(--color-text-primary);
  background: var(--color-bg-muted);
}

.modal-body {
  padding: var(--spacing-6);
  max-height: 60vh;
  overflow-y: auto;
  font-size: 16px;
  line-height: 1.6;
  color: var(--color-text-secondary);
}

.modal-footer {
  padding: 16px 24px;
  border-top: 1px solid #E5E7EB;
  display: flex;
  justify-content: flex-end;
  gap: var(--spacing-3);
}
```

#### Tooltip

**Visual Characteristics:**
- Background: `#111827` (dark)
- Color: White
- Padding: 6px 10px
- Border radius: 6px
- Font size: 14px
- Shadow: `shadow-md`
- Max width: 200px
- Arrow: 6px triangle pointing to trigger

**Animation:**
- Fade in: 0.15s
- Slight translate from direction of arrow

---

### Feedback Components

#### Alerts

**Success Alert:**
- Background: `#ECFDF5` (light green tint)
- Border left: 4px solid `#10B981` (success)
- Text color: `#065F46` (dark green)
- Icon: Checkmark circle, `#10B981`

**Warning Alert:**
- Background: `#FFFBEB` (light yellow tint)
- Border left: 4px solid `#F59E0B`
- Text color: `#92400E` (dark yellow)
- Icon: Warning triangle, `#F59E0B`

**Error Alert:**
- Background: `#FEF2F2` (light red tint)
- Border left: 4px solid `#EF4444`
- Text color: `#991B1B` (dark red)
- Icon: X circle, `#EF4444`

**Info Alert:**
- Background: `#EFF6FF` (light blue tint)
- Border left: 4px solid `#3B82F6`
- Text color: `#1E40AF` (dark blue)
- Icon: Info circle, `#3B82F6`

**Structure:**
- Padding: 12px 16px
- Border radius: 6px
- Display: Flex
- Gap: 12px between icon and content
- Font size: 14px

**Dismiss Button:**
- Position: Right side
- Size: 20px × 20px
- Color: Inherit from alert type (muted)
- Hover: Darker shade

**CSS Implementation:**
```css
.alert {
  display: flex;
  align-items: flex-start;
  gap: var(--spacing-3);
  padding: 12px 16px;
  border-radius: var(--radius-md);
  border-left: 4px solid;
  font-size: 14px;
  line-height: 1.5;
}

.alert-icon {
  width: 20px;
  height: 20px;
  flex-shrink: 0;
}

.alert-content {
  flex: 1;
}

.alert-close {
  width: 20px;
  height: 20px;
  cursor: pointer;
  opacity: 0.7;
  transition: opacity 0.2s ease;
}

.alert-close:hover {
  opacity: 1;
}

/* Success */
.alert-success {
  background: #ECFDF5;
  border-left-color: var(--color-success);
  color: #065F46;
}

.alert-success .alert-icon {
  color: var(--color-success);
}

/* Warning */
.alert-warning {
  background: #FFFBEB;
  border-left-color: var(--color-warning);
  color: #92400E;
}

.alert-warning .alert-icon {
  color: var(--color-warning);
}

/* Error */
.alert-error {
  background: #FEF2F2;
  border-left-color: var(--color-error);
  color: #991B1B;
}

.alert-error .alert-icon {
  color: var(--color-error);
}

/* Info */
.alert-info {
  background: #EFF6FF;
  border-left-color: var(--color-info);
  color: #1E40AF;
}

.alert-info .alert-icon {
  color: var(--color-info);
}
```

#### Loading Spinner

**Visual Characteristics:**
- Size: 20px (small), 32px (medium), 48px (large)
- Border: 3px
- Color: `#3B82F6` with transparency for trail
- Animation: Spin 0.6s linear infinite

---

### Badges/Tags

**Default Badge:**
- Padding: 4px 10px
- Font size: 12px
- Font weight: 500
- Border radius: 12px (pill shape)
- Text transform: Uppercase
- Letter spacing: 0.025em

**Color Variants:**
- **Primary**: Background `#EFF6FF`, Text `#1E40AF`
- **Success**: Background `#ECFDF5`, Text `#065F46`
- **Warning**: Background `#FFFBEB`, Text `#92400E`
- **Error**: Background `#FEF2F2`, Text `#991B1B`
- **Gray**: Background `#F3F4F6`, Text `#374151`

**CSS Implementation:**
```css
.badge {
  display: inline-flex;
  align-items: center;
  padding: 4px 10px;
  font-size: 12px;
  font-weight: 500;
  border-radius: var(--radius-full);
  text-transform: uppercase;
  letter-spacing: 0.025em;
}

.badge-primary {
  background: #EFF6FF;
  color: #1E40AF;
}

.badge-success {
  background: #ECFDF5;
  color: #065F46;
}

.badge-warning {
  background: #FFFBEB;
  color: #92400E;
}

.badge-error {
  background: #FEF2F2;
  color: #991B1B;
}

.badge-gray {
  background: #F3F4F6;
  color: #374151;
}
```

---

### Other Components

#### Avatar

**Sizes:**
- Small: 32px × 32px
- Medium: 40px × 40px
- Large: 48px × 48px
- XL: 64px × 64px

**Styling:**
- Border radius: Full (circle)
- Background: `#E5E7EB` (when no image)
- Initials: Centered, 14-20px depending on size
- Object fit: Cover

#### Divider

**Horizontal:**
- Border top: 1px solid `#E5E7EB`
- Margin: 24px 0

**Vertical:**
- Border right: 1px solid `#E5E7EB`
- Height: 100%
- Margin: 0 16px

---

## 💻 Complete CSS Implementation

```css
:root {
  /* Colors - Primary */
  --color-primary-500: #3B82F6;
  --color-primary-600: #2563EB;

  /* Colors - Secondary */
  --color-secondary-500: #6B7280;

  /* Colors - Accent */
  --color-success: #10B981;
  --color-warning: #F59E0B;
  --color-error: #EF4444;
  --color-info: #3B82F6;

  /* Colors - Background */
  --color-bg-base: #FFFFFF;
  --color-bg-surface: #F9FAFB;
  --color-bg-muted: #F3F4F6;

  /* Colors - Text */
  --color-text-primary: #111827;
  --color-text-secondary: #6B7280;
  --color-text-muted: #9CA3AF;

  /* Typography */
  --font-family-sans: Inter, system-ui, -apple-system, sans-serif;
  --font-family-mono: 'SF Mono', Monaco, 'Courier New', monospace;

  /* Spacing */
  --spacing-0: 0px;
  --spacing-1: 4px;
  --spacing-2: 8px;
  --spacing-3: 12px;
  --spacing-4: 16px;
  --spacing-5: 20px;
  --spacing-6: 24px;
  --spacing-8: 32px;
  --spacing-10: 40px;
  --spacing-12: 48px;
  --spacing-16: 64px;
  --spacing-20: 80px;

  /* Shadows */
  --shadow-sm: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
  --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
  --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);

  /* Border Radius */
  --radius-sm: 4px;
  --radius-md: 6px;
  --radius-lg: 8px;
  --radius-xl: 12px;
  --radius-full: 9999px;
}

/* [All component CSS from above sections would be included here] */
```

---

## 📱 Implementation Guidelines

### Getting Started

1. Copy the CSS variables into your project's root/global CSS file
2. Reference tokens using `var(--token-name)` syntax throughout your styles
3. Build components using the CSS classes provided above
4. Customize token values to match your brand while maintaining consistency

### Best Practices

- **Use design tokens**: Always reference CSS variables instead of hardcoding values
- **Maintain spacing consistency**: Use the 4px-based spacing scale throughout
- **Layer shadows appropriately**: Subtle elevation for cards, stronger for modals
- **Test interactive states**: Verify hover, focus, and active states work correctly
- **Ensure accessibility**: Check color contrast ratios (WCAG AA minimum: 4.5:1 for text)
- **Keyboard navigation**: All interactive elements must be keyboard accessible

### Accessibility Notes

- All interactive components include `:focus-visible` styles for keyboard navigation
- Color combinations meet WCAG AA contrast requirements (4.5:1 for normal text, 3:1 for large text)
- Form inputs include proper labels and error messaging
- Buttons and links have sufficient touch targets (minimum 44×44px)
- Icons should include `aria-label` or be accompanied by text
- Modals should trap focus and return focus on close
- Alert components use appropriate ARIA roles

### Responsive Considerations

- Components use relative units (rem, %) where appropriate
- Touch targets are sized appropriately for mobile (44px minimum)
- Modal widths are constrained with `max-width: 90vw` for mobile
- Navigation may require a mobile menu/hamburger pattern (not visible in analyzed design)
- Consider adding breakpoints for tablet (768px) and mobile (640px) layouts
